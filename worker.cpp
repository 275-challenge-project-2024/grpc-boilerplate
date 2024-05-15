#include <iostream>
#include <memory>
#include <string>
#include <vector>
#include <grpcpp/grpcpp.h>
#include "scheduler.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using scheduler::HeartbeatRequest;
using scheduler::HeartbeatResponse;
using scheduler::TaskScheduler;
using scheduler::Update;

class TaskSchedulerClient {
public:
    TaskSchedulerClient(std::shared_ptr<Channel> channel)
            : stub_(TaskScheduler::NewStub(channel)) {}

    // Method to add a task update to the request
    void AddTaskUpdate(HeartbeatRequest& request, const std::string& command,
                       const std::string& completionStatus, const std::string& taskId) {
        Update* update = request.add_taskupdates(); // Use add_taskupdates() to create a new Update
        update->set_command(command);
        update->set_completionstatus(completionStatus);
        update->set_taskid(taskId);
    }

    std::string SendHeartbeat(const std::string& workerId, const std::string& timestamp,
                              const std::vector<Update>& updates) {
        HeartbeatRequest request;
        request.set_workerid(workerId);
        request.set_timestamp(timestamp);

        // Add each Update to the HeartbeatRequest
        for (const auto& update : updates) {
            AddTaskUpdate(request, update.command(), update.completionstatus(), update.taskid());
        }

        HeartbeatResponse response;
        ClientContext context;

        Status grpcStatus = stub_->SendHeartbeat(&context, request, &response);

        if (grpcStatus.ok()) {
            return "Server ack: " + response.message();
        } else {
            return "Failed to send heartbeat: " + grpcStatus.error_message() + " | Error Code: " + std::to_string(grpcStatus.error_code());
        }
    }

private:
    std::unique_ptr<TaskScheduler::Stub> stub_;
};

int main(int argc, char** argv) {
    TaskSchedulerClient client(grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials()));
    std::string timestamp = "2024-05-10T15:00:00Z";  // Example ISO 8601 timestamp

    // Create a list of updates
    std::vector<Update> updates;
    Update update1;
    update1.set_command("Process data");
    update1.set_completionstatus("In progress");
    update1.set_taskid("task123");

    Update update2;
    update2.set_command("Generate report");
    update2.set_completionstatus("Completed");
    update2.set_taskid("task456");

    updates.push_back(update1);
    updates.push_back(update2);

    // Send the heartbeat with the updates
    std::string response = client.SendHeartbeat("12345", timestamp, updates);  // example worker ID and timestamp
    std::cout << "Client received: " << response << std::endl;
    return 0;
}
