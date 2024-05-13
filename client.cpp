#include <iostream>
#include <memory>
#include <string>
#include <grpcpp/grpcpp.h>
#include "task.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using taskscheduler::Task;
using taskscheduler::TaskStatus;
using taskscheduler::TaskScheduler;

class TaskSchedulerClient {
public:
    TaskSchedulerClient(std::shared_ptr<Channel> channel)
        : stub_(TaskScheduler::NewStub(channel)) {}

    std::string SubmitTask(const std::string& command, int priority) {
        Task task;
        task.set_command(command);
        task.set_priority(priority);

        TaskStatus status;
        ClientContext context;

        Status grpcStatus = stub_->SubmitTask(&context, task, &status);

        if (grpcStatus.ok()) {
            return "Task submitted successfully: ID " + std::to_string(status.taskid());
        } else {
            return "Failed to submit task: " + grpcStatus.error_message();
        }
    }

private:
    std::unique_ptr<TaskScheduler::Stub> stub_;
};

int main(int argc, char** argv) {
    TaskSchedulerClient client(grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials()));
    std::string response = client.SubmitTask("echo Hello, World!", 10);
    std::cout << "Client received: " << response << std::endl;
    return 0;
}
