#include <grpcpp/grpcpp.h>
#include "scheduler.grpc.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using scheduler::HeartbeatRequest;
using scheduler::HeartbeatResponse;
using scheduler::TaskScheduler;

class TaskSchedulerServiceImpl final : public TaskScheduler::Service {
    Status SendHeartbeat(ServerContext* context, const HeartbeatRequest* taskRequest, HeartbeatResponse* taskResponse) override {

        // Use the correct accessor methods as defined in the proto file
        std::cout << "Received task with worker ID: " << taskRequest->workerid()
                  << " and timestamp: " << taskRequest->timestamp() << std::endl;

        taskResponse->set_message("Received");
        return Status::OK;
    }
};

void RunServer() {
    std::string server_address("0.0.0.0:50051");
    TaskSchedulerServiceImpl service;

    ServerBuilder builder;
    // Add listening port and register services
    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    builder.RegisterService(&service);  // No need for reinterpret_cast
    std::unique_ptr<Server> server(builder.BuildAndStart());

    std::cout << "Server listening on " << server_address << std::endl;
    server->Wait();
}

int main(int argc, char** argv) {
    RunServer();
    return 0;
}
