🚀 Serverless AI Solution to Detect Unlicensed Vehicles in Real-Time (AWS + Terraform)
🔗 📖 Full Project Documentation on Notion:
Click here to view complete project details

📌 Overview
This project provides a fully automated serverless infrastructure for real-time vehicle detection using AWS services and Terraform. It processes live video streams, detects unlicensed vehicles using AI models, and stores metadata for further analysis.

🔹 Key AWS Services Used
S3 → Stores processed images & metadata.
Kinesis → Handles real-time video stream processing.
Lambda → Executes frame processing & image analysis.
SNS → Sends alerts when an unlicensed vehicle is detected.
DynamoDB → Stores metadata for detected vehicles.
API Gateway → Exposes REST APIs for external integration.
IAM → Manages security roles & permissions.
EventBridge → Automates event-driven workflows.
📂 Project Structure
plaintext
Copy
Edit
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
🛠 Setup & Deployment Instructions
✅ 1️⃣ Prerequisites
Ensure you have:

Terraform installed
AWS credentials configured (~/.aws/credentials)
Dependencies installed for Lambda:
sh
Copy
Edit
pip install -r lambda/requirements.txt
🚀 2️⃣ Deploy Infrastructure
sh
Copy
Edit
terraform init   # Initialize Terraform
terraform plan   # Preview changes
terraform apply -auto-approve  # Deploy infrastructure
🛠 3️⃣ Deploy Lambda Functions
sh
Copy
Edit
cd lambda
./deploy.sh  # Package & upload Lambda functions
❌ 4️⃣ Destroy Infrastructure (if needed)
sh
Copy
Edit
terraform destroy -auto-approve
📜 Terraform File Breakdown
File	Description
main.tf	Calls all Terraform modules & defines resource dependencies.
providers.tf	Defines AWS provider & authentication settings.
variables.tf	Stores configurable variables.
outputs.tf	Specifies outputs like S3 bucket name & API URL.
backend.tf	Configures Terraform backend (S3 & DynamoDB).
modules/s3.tf	Defines an S3 bucket for image storage.
modules/kinesis.tf	Configures Kinesis for stream processing.
modules/lambda.tf	Deploys AWS Lambda functions.
modules/sns.tf	Sets up SNS for notifications.
modules/dynamodb.tf	Defines a DynamoDB table for storing metadata.
modules/api_gateway.tf	Creates API Gateway for external access.
modules/iam.tf	Manages IAM roles & permissions.
modules/events.tf	Configures EventBridge rules.
modules/data.tf	Handles additional data processing logic.
📌 📖 More Details
For complete diagrams, architecture flow, explanations, and implementation details, visit the Notion project page:
🔗 Click here to view complete documentation

📌 Contributions & Feedback
If you have any suggestions or want to contribute, feel free to submit a pull request or open an issue. 🚀

