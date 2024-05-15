#include <iostream>
#include <memory>
#include <string>
#include <grpcpp/grpcpp.h>
#include "scheduler.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using scheduler::TaskRequest;
using scheduler::TaskResponse;
using scheduler::TaskScheduler;

class TaskSchedulerClient {
public:
    TaskSchedulerClient(std::shared_ptr<Channel> channel)
            : stub_(TaskScheduler::NewStub(channel)) {}

    std::string SubmitTask(const std::string& clientId, const std::string& taskId, const std::string& command, const int& priority ) {
        TaskRequest request;
        request.set_clientid(clientId);
        request.set_taskid(taskId);
        request.set_command(command);
        request.set_priority(priority);

        TaskResponse response;
        ClientContext context;

        Status grpcStatus = stub_->SubmitTask(&context, request, &response);

        if (grpcStatus.ok()) {
            return "Server ack: " + response.message();
        } else {
            return "Failed to submit task: " + grpcStatus.error_message() + " | Error Code: " + std::to_string(grpcStatus.error_code());
        }
    }

private:
    std::unique_ptr<TaskScheduler::Stub> stub_;
};

int main(int argc, char** argv) {
    TaskSchedulerClient client(grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials()));

    // Test submission of a task
    std::string response = client.SubmitTask("client123", "task789", "Archive logs", 1);
    std::cout << "Client received: " << response << std::endl;
    return 0;
}
