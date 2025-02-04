resource "aws_s3_bucket" "frames" {
  bucket        = "${var.project_name}-frames-${data.aws_caller_identity.current.account_id}"
  force_destroy = true
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.frames.id

  lambda_function {
    lambda_function_arn = aws_lambda_function.image_analyzer.arn
    events              = ["s3:ObjectCreated:*"]
  }
}
