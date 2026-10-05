# Task 3: Infrastructure as Code (IaC) with Terraform

## Objective
The main objective of this task is to provision a local Docker container using Terraform (Infrastructure as Code). 

## Tools & Technologies Used
* **Terraform:** For writing and applying Infrastructure as Code (IaC).
* **Docker Desktop:** For running the local container engine.
* **VS Code:** As the Code Editor and Terminal.

## Files in this Repository
* `main.tf`: The Terraform configuration file used to provision the Docker container.
* `execution_logs.txt`: Contains the terminal output (logs) of the `terraform apply` process.
* `README.md`: Step-by-step documentation of the entire workflow.

## Step-by-Step Execution Workflow

### 1. Prerequisites Setup
* Installed **Docker Desktop** and ensured the Docker Daemon is running locally (using WSL 2 backend).
* Installed **Terraform** on the Windows machine and configured the Environment Path.

### 2. Creating the Terraform Configuration
* Created a project directory named `docker-iac` and opened it in VS Code.
* Created a `main.tf` file.
* Defined the required provider (`kreuzwerker/docker`) and wrote the configuration to pull the `nginx:latest` image and run a container on ports `80:8080`.

### 3. Initializing Terraform
* Ran the following command in the terminal to download and initialize the Docker provider plugins:
  ```bash
  terraform init

4. Planning the Infrastructure
Executed the plan command to preview the changes Terraform will make to the system:

Bash
terraform plan
Verified that 2 resources (image and container) were queued for creation.

5. Applying the Code (Provisioning)
Ran the apply command to execute the code and build the infrastructure:

Bash
terraform apply
Confirmed with yes when prompted. The Nginx container and image were successfully created. (Execution logs saved in execution_logs.txt).

6. Checking the Terraform State
Used the state command to verify how Terraform tracked the newly created resources in the terraform.tfstate file:

Bash
terraform state list
terraform show
<img width="492" height="144" alt="state" src="https://github.com/user-attachments/assets/64545d03-1f14-48c0-998a-7f08ef543c9b" />


7. Cleaning Up (Destroying Infrastructure)
After successful execution and saving the logs, safely destroyed the provisioned resources to free up local space:

Bash
terraform destroy
Confirmed with yes, resulting in the successful deletion of the Docker image and Nginx container.

Conclusion
Successfully completed the task by provisioning and managing a local Docker container completely via Terraform IaC, understanding the complete lifecycle of init, plan, apply, state, and destroy.
