# Car Detection System

## Architecture
1. **Kinesis Video Stream** captures the video.
2. **Lambda (frame_processor)** extracts frames and stores them in **S3**.
3. **Lambda (image_analyzer)** analyzes frames using **Rekognition**.
4. **DynamoDB** stores detection results.
5. **SNS** sends alerts if a car is detected.
6. **API Gateway** provides a REST API for querying detections.

## 🛠 Deployment
1. Initialize Terraform:
   ```bash
   terraform init
