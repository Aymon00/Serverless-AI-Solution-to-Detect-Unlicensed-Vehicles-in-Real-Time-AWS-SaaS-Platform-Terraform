variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for storing images"
  default     = "car-detection-images"
}

variable "dynamodb_table" {
  description = "DynamoDB table name"
  default     = "CarDetections"
}

variable "kinesis_stream_name" {
  description = "Kinesis Video Stream name"
  default     = "car-detection-video-stream"
}

variable "sns_topic_name" {
  description = "SNS topic name for car detection alerts"
  default     = "CarDetectionAlerts"
}

variable "lambda_runtime" {
  description = "Runtime environment for Lambda functions"
  default     = "python3.8"
}

variable "api_gateway_name" {
  description = "API Gateway name"
  default     = "CarDetectionAPI"
}
