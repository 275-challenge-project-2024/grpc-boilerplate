#include <iostream>
#include <memory>
#include <string>
#include <regex>
#include <grpcpp/grpcpp.h>
#include "task.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using taskscheduler::Task;
using taskscheduler::TaskStatus;
using taskscheduler::TaskScheduler;

bool validateCommand(const std::string& command) {
    std::regex echo_regex("^echo\\s+.+");
    std::regex cd_regex("^cd\\s+\\S+");
    std::regex cp_regex("^cp\\s+\\S+\\s+\\S+");

    return std::regex_match(command, echo_regex) ||
           std::regex_match(command, cd_regex) ||
           std::regex_match(command, cp_regex);
}

class TaskSchedulerClient {
public:
    TaskSchedulerClient(std::shared_ptr<Channel> channel) : stub_(TaskScheduler::NewStub(channel)) {}

    std::string SubmitTask(const std::string& command, int priority) {
        Task task;
        task.set_command(command);
        task.set_priority(priority);

        TaskStatus response;
        ClientContext context;

        Status status = stub_->SubmitTask(&context, task, &response);

        if (status.ok()) {
            return "Server ack: " + response.status();
        } else {
            return "Failed to submit task: " + status.error_message() + " | Error Code: " + std::to_string(status.error_code());
        }
    }

    std::string GetTaskStatus(int taskId) {
        Task task;
        task.set_id(taskId);

        TaskStatus response;
        ClientContext context;

        Status status = stub_->SubmitTask(&context, task, &response);

        if (status.ok()) {
            return "Task status: " + response.status();
        } else {
            return "Failed to get task status: " + status.error_message() + " | Error Code: " + std::to_string(status.error_code());
        }
    }

    std::string CancelTask(int taskId) {
        Task task;
        task.set_id(taskId);

        TaskStatus response;
        ClientContext context;

        Status status = stub_->SubmitTask(&context, task, &response);

        if (status.ok()) {
            return "Task cancellation status: " + response.status();
        } else {
            return "Failed to cancel task: " + status.error_message() + " | Error Code: " + std::to_string(status.error_code());
        }
    }

    std::string GetTaskResult(int taskId) {
        Task task;
        task.set_id(taskId);

        TaskStatus response;
        ClientContext context;

        Status status = stub_->SubmitTask(&context, task, &response);

        if (status.ok()) {
            return "Task result status: " + response.status();
        } else {
            return "Failed to get task result: " + status.error_message() + " | Error Code: " + std::to_string(status.error_code());
        }
    }

private:
    std::unique_ptr<TaskScheduler::Stub> stub_;
};

int main(int argc, char** argv) {
    TaskSchedulerClient client(grpc::CreateChannel("localhost:8088", grpc::InsecureChannelCredentials()));

    std::string command;
    int taskId, priority;

    while (true) {
        std::cout << "Enter a command (submit, status, cancel, result, exit): ";
        std::cin >> command;

        if (command == "exit") {
            break;
        } else if (command == "submit") {
            std::cout << "Enter the task command: ";
            std::cin.ignore();
            std::getline(std::cin, command);

            if (!validateCommand(command)) {
                std::cout << "Invalid command. Please use valid commands (echo, cd, cp)." << std::endl;
                continue;
            }

            std::cout << "Enter the priority: ";
            std::cin >> priority;

            std::string response = client.SubmitTask(command, priority);
            std::cout << response << std::endl;
        } else if (command == "status") {
            std::cout << "Enter the task ID: ";
            std::cin >> taskId;

            std::string response = client.GetTaskStatus(taskId);
            std::cout << response << std::endl;
        } else if (command == "cancel") {
            std::cout << "Enter the task ID: ";
            std::cin >> taskId;

            std::string response = client.CancelTask(taskId);
            std::cout << response << std::endl;
        } else if (command == "result") {
            std::cout << "Enter the task ID: ";
            std::cin >> taskId;

            std::string response = client.GetTaskResult(taskId);
            std::cout << response << std::endl;
        } else {
            std::cout << "Invalid command. Please try again." << std::endl;
        }
    }

    return 0;
}