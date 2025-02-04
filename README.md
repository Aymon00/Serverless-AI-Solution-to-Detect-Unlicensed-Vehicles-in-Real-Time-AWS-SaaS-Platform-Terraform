# Serverless AI Solution to Detect Unlicensed Vehicles – AWS SaaS Platform (Terraform) 🚀
# Welcome to the Car Detection Infrastructure, a fully automated AWS-powered system designed to detect unlicensed vehicles in real-time. This repository contains the Terraform-based infrastructure setup for the project.

# 🔗 For a complete project overview, architecture diagrams, and additional details, visit the Notion workspace:
📖 Project Documentation on Notion: https://yummy-success-abe.notion.site/Serverless-AI-Solution-to-Detect-Unlicensed-Vehicles-in-Real-Time-AWS-SaaS-Platform-Terraform-185d1728bdbc8011937fc0dacc54f365?pvs=4

# 🚀 Overview
This project provides a scalable, serverless AI solution using AWS services to process video streams, analyze vehicle images, and detect unlicensed vehicles.

✅ Real-time processing: AWS Kinesis and Lambda for fast video stream analysis.
✅ Efficient data storage: DynamoDB for metadata and S3 for images.
✅ Event-driven architecture: Uses SNS and EventBridge for notifications and automation.
✅ Secure API exposure: AWS API Gateway enables external access.

# 📌 AWS Services Used
Service	Purpose
S3	Stores processed images and metadata.
Kinesis	Handles real-time video stream processing.
Lambda	Executes frame processing and image analysis.
SNS	Sends notifications when a car is detected.
DynamoDB	Stores metadata related to detected vehicles.
API Gateway	Exposes REST APIs for external integrations.
IAM	Manages security roles and permissions.
EventBridge	Triggers automated workflows.
