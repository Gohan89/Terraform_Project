Hosting Static Website Using Terraform
This repository contains Terraform scripts to automate the provisioning of infrastructure on AWS for hosting a static website.

Overview
This project demonstrates how to use Terraform to deploy a static website on AWS. It includes scripts to create necessary AWS resources such as EC2 instances, security groups, and key pairs.

Prerequisites
Before you begin, ensure you have the following installed and configured:

AWS CLI: Install and configure the AWS CLI with your AWS credentials.
Terraform: Install Terraform on your local machine.
Setup Instructions
AWS Setup:

Create an IAM user with Administrator access.
Configure AWS CLI on your local machine with the IAM user credentials.
Key Pair and Security Group:

Generate an SSH key pair for accessing EC2 instances.
Create a security group allowing inbound traffic on port 80 (HTTP) and 22 (SSH).
Clone Repository:

Clone this Git repository to your local machine.
Initialize Terraform:

Run terraform init to initialize Terraform and download necessary providers.
Review and Modify Configuration:

Review the Terraform configuration files (main.tf, variables.tf, etc.) to understand the resources being created.
Customize the configuration as per your project requirements.
Apply Terraform Configuration:

Run terraform apply to apply the Terraform configuration and provision AWS resources.
Confirm changes by typing yes when prompted.
Access Your Website:

Once provisioning is complete, access your static website using the public or private IP address of the EC2 instance.
Destroy Infrastructure:

When you no longer need the resources, run terraform destroy to remove all provisioned infrastructure.
Confirm destruction by typing yes when prompted.
Notes
Ensure AWS credentials are correctly configured on your local machine (aws configure).
Customize any shell scripts or configuration files (web.sh, etc.) to match your specific static website deployment needs.
