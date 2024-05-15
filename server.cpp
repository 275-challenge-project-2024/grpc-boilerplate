#include <grpcpp/grpcpp.h>
#include "scheduler.grpc.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using scheduler::HeartbeatRequest;
using scheduler::HeartbeatResponse;
using scheduler::TaskScheduler;
using scheduler::Update;

class TaskSchedulerServiceImpl final : public TaskScheduler::Service {
    Status SendHeartbeat(ServerContext* context, const HeartbeatRequest* taskRequest, HeartbeatResponse* taskResponse) override {
        std::cout << "Received heartbeat with worker ID: " << taskRequest->workerid()
                  << " and timestamp: " << taskRequest->timestamp() << std::endl;

        // Iterate over each task update in the heartbeat
        for (const Update& update : taskRequest->taskupdates()) {
            std::cout << "Task Update - ID: " << update.taskid()
                      << ", Command: " << update.command()
                      << ", Status: " << update.completionstatus() << std::endl;
        }

        // Respond that the heartbeat was received successfully
        taskResponse->set_message("Heartbeat received successfully");
        return Status::OK;
    }
};

void RunServer() {
    std::string server_address("0.0.0.0:50051");
    TaskSchedulerServiceImpl service;

    ServerBuilder builder;
    // Add listening port and register services
    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    builder.RegisterService(&service);  // Directly register the service
    std::unique_ptr<Server> server(builder.BuildAndStart());

    std::cout << "Server listening on " << server_address << std::endl;
    server->Wait();
}

int main(int argc, char** argv) {
    RunServer();
    return 0;
}
