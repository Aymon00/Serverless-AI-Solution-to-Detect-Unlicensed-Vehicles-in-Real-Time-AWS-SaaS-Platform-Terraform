resource "aws_lambda_function" "frame_processor" {
  function_name    = "${var.project_name}-frame-processor"
  role            = aws_iam_role.lambda_exec.arn
  handler         = "main.lambda_handler"
  runtime         = "python3.8"
  filename        = "${path.module}/lambda/frame_processor.zip"
  source_code_hash = filebase64sha256("${path.module}/lambda/frame_processor.zip")

  environment {
    variables = {
      S3_BUCKET = aws_s3_bucket.frames.bucket
    }
  }
}

resource "aws_lambda_function" "image_analyzer" {
  function_name    = "${var.project_name}-image-analyzer"
  role            = aws_iam_role.lambda_exec.arn
  handler         = "main.lambda_handler"
  runtime         = "python3.8"
  filename        = "${path.module}/lambda/image_analyzer.zip"
  source_code_hash = filebase64sha256("${path.module}/lambda/image_analyzer.zip")

  environment {
    variables = {
      DYNAMODB_TABLE = aws_dynamodb_table.detections.name
      SNS_TOPIC_ARN  = aws_sns_topic.alerts.arn
    }
  }
}
