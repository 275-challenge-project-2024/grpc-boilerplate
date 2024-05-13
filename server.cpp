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
    Status SubmitTask(ServerContext* context, const Task* task, TaskStatus* status) override {
        
        std::cout << "Received task with command: " << task->command() << " and priority: " << task->priority() << std::endl;

        status->set_status("Received");
        status->set_taskid(rand() % 1000);  // Random task ID for example purposes
        return Status::OK;
    }
};

void RunServer() {
    std::string server_address("0.0.0.0:50051");
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
