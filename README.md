# 🚀 Serverless AI Solution for Real-Time Unlicensed Vehicle Detection (AWS SaaS Platform)

This repository contains the **Terraform-based infrastructure** for a **serverless AI-powered car detection system** deployed on AWS. The system processes real-time video streams, detects unlicensed vehicles using AI, and sends alerts.

## 📌 Project Overview

This project leverages AWS services to process real-time video streams, analyze frames using machine learning, and store metadata efficiently. The repository focuses **only on the code and infrastructure**, while additional documentation, architecture diagrams, and project details are available on [Notion](https://yummy-success-abe.notion.site/Serverless-AI-Solution-to-Detect-Unlicensed-Vehicles-in-Real-Time-AWS-SaaS-Platform-185d1728bdbc8011937fc0dacc54f365?pvs=4).

## 🔹 AWS Services Used

- **S3**: Stores processed images and metadata.
- **Kinesis**: Handles real-time video stream processing.
- **Lambda**: Executes frame processing and image analysis.
- **SNS**: Sends notifications when a car is detected.
- **DynamoDB**: Stores metadata related to detected cars.
- **API Gateway**: Exposes REST APIs for external integrations.
- **IAM**: Manages security roles and permissions.
- **EventBridge**: Automates event-driven workflows.

---

📂 Project Structure

car-detection-infra/
│── main.tf
│── providers.tf
│── variables.tf
│── outputs.tf
│── backend.tf
│── modules/
│   ├── s3.tf
│   ├── kinesis.tf
│   ├── lambda.tf
│   ├── sns.tf
│   ├── dynamodb.tf
│   ├── api_gateway.tf
│   ├── iam.tf
│   ├── events.tf
│   ├── data.tf
│── lambda/
│   ├── frame_processor.py
│   ├── image_analyzer.py
│   ├── requirements.txt
│   ├── deploy.sh
│── README.md
│── .gitignore

🛠 Setup Instructions
1️⃣ Prerequisites


🛠 Setup Instructions
1️⃣ Prerequisites

    Install Terraform
    Configure AWS credentials (~/.aws/credentials)
    Install dependencies for Lambda (pip install -r lambda/requirements.txt)

2️⃣ Deploy Infrastructure

terraform init  # Initialize Terraform
terraform plan  # Preview changes
terraform apply -auto-approve  # Deploy infrastructure

3️⃣ Deploy Lambda Functions

cd lambda
./deploy.sh  # Package and upload Lambda functions

4️⃣ Destroy Infrastructure (if needed)

terraform destroy -auto-approve

📜 Explanation of Terraform Files
File 	Description
main.tf 	Calls all Terraform modules and defines resource dependencies.
providers.tf 	Defines AWS provider and authentication settings.
variables.tf 	Stores all configurable variables.
outputs.tf 	Specifies output values such as S3 bucket name and API URL.
backend.tf 	Configures Terraform remote backend using S3 & DynamoDB.
modules/s3.tf 	Defines an S3 bucket for storing processed images.
modules/kinesis.tf 	Configures Kinesis for video stream processing.
modules/lambda.tf 	Deploys AWS Lambda functions for frame processing.
modules/sns.tf 	Configures SNS for sending alerts.
modules/dynamodb.tf 	Defines a DynamoDB table for storing metadata.
modules/api_gateway.tf 	Creates API Gateway for external access.
modules/iam.tf 	Manages IAM roles and permissions.
modules/events.tf 	Configures EventBridge rules for automation.
modules/data.tf 	Handles additional data processing logic.
