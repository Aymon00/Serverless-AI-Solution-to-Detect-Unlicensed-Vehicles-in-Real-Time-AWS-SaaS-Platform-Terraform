resource "aws_dynamodb_table" "detections" {
  name         = "${var.project_name}-detections"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "detection_id"

  attribute {
    name = "detection_id"
    type = "S"
  }

  global_secondary_index {
    name            = "TimestampIndex"
    hash_key        = "timestamp"
    projection_type = "ALL"
  }
}
