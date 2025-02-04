resource "aws_kinesis_video_stream" "main" {
  name                   = "${var.project_name}-stream"
  data_retention_in_hours = 24
  tags = {
    Environment = "Production"
  }
}
