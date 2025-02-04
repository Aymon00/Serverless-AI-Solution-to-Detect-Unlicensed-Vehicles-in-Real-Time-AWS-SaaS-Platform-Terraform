resource "aws_lambda_event_source_mapping" "kinesis" {
  event_source_arn  = aws_kinesis_video_stream.main.arn
  function_name     = aws_lambda_function.frame_processor.arn
  starting_position = "LATEST"
}
