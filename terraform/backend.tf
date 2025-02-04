terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "car-detection/terraform.tfstate"
    region = "us-east-1"
  }
}
