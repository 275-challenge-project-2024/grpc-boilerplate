#include <iostream>
#include <memory>
#include <string>
#include <grpcpp/grpcpp.h>
#include "scheduler.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using scheduler::HeartbeatRequest;
using scheduler::HeartbeatResponse;
using scheduler::TaskScheduler;

class TaskSchedulerClient {
public:
    TaskSchedulerClient(std::shared_ptr<Channel> channel)
            : stub_(TaskScheduler::NewStub(channel)) {}

    std::string SendHeartbeat(const std::string& workerId, const std::string& timestamp) {
        HeartbeatRequest request;
        request.set_workerid(workerId);
        request.set_timestamp(timestamp);

        HeartbeatResponse response;
        ClientContext context;

        Status grpcStatus = stub_->SendHeartbeat(&context, request, &response);

        if (grpcStatus.ok()) {
            return "Heartbeat received successfully: " + response.message();
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
    std::string response = client.SendHeartbeat("12345", timestamp);  // example worker ID and timestamp
    std::cout << "Client received: " << response << std::endl;
    return 0;
}
