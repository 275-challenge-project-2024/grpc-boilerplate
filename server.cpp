#include <grpcpp/grpcpp.h>
#include "task.grpc.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using taskscheduler::Task;
using taskscheduler::TaskStatus;
using taskscheduler::TaskScheduler;

class TaskSchedulerServiceImpl final : public TaskScheduler::Service {
    Status SubmitTask(ServerContext* context, const Task* task, TaskStatus* response) override {
        std::cout << "Received task submission with command: " << task->command()
                  << ", Priority: " << task->priority() << std::endl;

        // Process the task here (e.g., store it, execute it, etc.)

        // Respond that the task was received successfully
        response->set_status("Task received and is being processed");
        response->set_taskid(task->id());
        return Status::OK;
    }

    // Implement other methods (e.g., GetTaskStatus, CancelTask, GetTaskResult) if needed
};

void RunServer() {
    std::string server_address("0.0.0.0:8088");
    TaskSchedulerServiceImpl service;

    ServerBuilder builder;
    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    builder.RegisterService(&service);
    std::unique_ptr<Server> server(builder.BuildAndStart());

    std::cout << "Server listening on " << server_address << std::endl;
    server->Wait();
}

int main(int argc, char** argv) {
    RunServer();
    return 0;
}