output "s3_bucket_name" {
  description = "The name of the S3 bucket used for storing images"
  value       = aws_s3_bucket.image_storage.id
}

output "kinesis_stream_name" {
  description = "The name of the Kinesis Video Stream"
  value       = aws_kinesis_video_stream.video_stream.name
}

output "lambda_frame_processor_arn" {
  description = "ARN of the Frame Processor Lambda function"
  value       = aws_lambda_function.frame_processor.arn
}

output "lambda_image_analyzer_arn" {
  description = "ARN of the Image Analyzer Lambda function"
  value       = aws_lambda_function.image_analyzer.arn
}

output "sns_topic_arn" {
  description = "ARN of the SNS topic for car alerts"
  value       = aws_sns_topic.car_alerts.arn
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value       = aws_dynamodb_table.detections.name
}

output "api_gateway_url" {
  description = "The URL of the API Gateway"
  value       = aws_api_gateway_rest_api.car_detection_api.id
}
