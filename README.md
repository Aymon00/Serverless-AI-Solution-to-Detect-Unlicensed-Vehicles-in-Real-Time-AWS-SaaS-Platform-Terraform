# Serverless AI Solution to Detect Unlicensed Vehicles – AWS SaaS Platform (Terraform) 🚀

# Welcome to the Car Detection Infrastructure, a fully automated AWS-powered system designed to detect unlicensed vehicles in real-time. This repository contains the Terraform-based infrastructure setup for the project.

🔗 For a complete project overview, architecture diagrams, and additional details, visit the Notion workspace:
📖 Project Documentation on Notion

🚀 Overview
This project provides a scalable, serverless AI solution using AWS services to process video streams, analyze vehicle images, and detect unlicensed vehicles.

✅ Real-time processing: AWS Kinesis and Lambda for fast video stream analysis.
✅ Efficient data storage: DynamoDB for metadata and S3 for images.
✅ Event-driven architecture: Uses SNS and EventBridge for notifications and automation.
✅ Secure API exposure: AWS API Gateway enables external access.

📌 AWS Services Used
Service	Purpose
S3	Stores processed images and metadata.
Kinesis	Handles real-time video stream processing.
Lambda	Executes frame processing and image analysis.
SNS	Sends notifications when a car is detected.
DynamoDB	Stores metadata related to detected vehicles.
API Gateway	Exposes REST APIs for external integrations.
IAM	Manages security roles and permissions.
EventBridge	Triggers automated workflows.
📂 Repository Structure
plaintext
Copy
Edit
car-detection-infra/
│── terraform/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   ├── modules/
│   │   ├── s3.tf
│   │   ├── kinesis.tf
│   │   ├── lambda.tf
│   │   ├── sns.tf
│   │   ├── dynamodb.tf
│   │   ├── api_gateway.tf
│   │   ├── iam.tf
│   │   ├── events.tf
│   │   ├── data.tf
│── lambda/
│   ├── frame_processor.py
│   ├── image_analyzer.py
│   ├── requirements.txt
│   ├── deploy.sh
│── .github/workflows/
│   ├── deploy_lambda.yml
│   ├── terraform_apply.yml
│── README.md
│── .gitignore
🛠 Deployment Guide
1️⃣ Prerequisites
Install Terraform

Configure AWS credentials (~/.aws/credentials)

Install Lambda dependencies:

sh
Copy
Edit
pip install -r lambda/requirements.txt
2️⃣ Deploy the Infrastructure
sh
Copy
Edit
terraform init     # Initialize Terraform
terraform plan     # Preview changes
terraform apply -auto-approve  # Deploy infrastructure
3️⃣ Deploy Lambda Functions
sh
Copy
Edit
cd lambda
./deploy.sh  # Package and upload Lambda functions
4️⃣ Destroy Infrastructure (if needed)
sh
Copy
Edit
terraform destroy -auto-approve
📜 Explanation of Terraform Files
File	Description
main.tf	Calls all Terraform modules and defines resource dependencies.
providers.tf	Defines AWS provider and authentication settings.
variables.tf	Stores all configurable variables.
outputs.tf	Specifies output values such as S3 bucket name and API URL.
backend.tf	Configures Terraform remote backend using S3 & DynamoDB.
modules/s3.tf	Defines an S3 bucket for storing processed images.
modules/kinesis.tf	Configures Kinesis for real-time video stream processing.
modules/lambda.tf	Deploys AWS Lambda functions for frame processing.
modules/sns.tf	Configures SNS for sending alerts.
modules/dynamodb.tf	Defines a DynamoDB table for storing metadata.
modules/api_gateway.tf	Creates API Gateway for external access.
modules/iam.tf	Manages IAM roles and permissions.
modules/events.tf	Configures EventBridge rules for automation.
modules/data.tf	Handles additional data processing logic.
📜 Additional Project Details
🔗 Where to Find Full Documentation?
This repository only contains Terraform and Lambda code.

For a detailed explanation of the project, including architecture diagrams, workflows, use cases, and advanced configurations, visit:
📖 Project Documentation on Notion

💡 Future Enhancements
Add CI/CD pipelines for automated deployments.
Improve logging and monitoring using AWS CloudWatch.
Integrate AI/ML models for advanced vehicle recognition.
🚀 Contributing
Fork the repository and create a new feature branch.
Submit a pull request with a detailed description of changes.
📧 Contact & Support
For any issues, reach out via GitHub Issues or contact us on Notion.

📖 Project Documentation on Notion
