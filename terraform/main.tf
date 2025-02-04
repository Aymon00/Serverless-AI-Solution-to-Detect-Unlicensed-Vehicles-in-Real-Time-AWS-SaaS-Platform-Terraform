terraform {
  backend "s3" {
    bucket         = "car-detection-terraform-state"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

module "s3" {
  source = "./modules/s3"
}

module "kinesis" {
  source = "./modules/kinesis"
}

module "lambda" {
  source = "./modules/lambda"
}

module "sns" {
  source = "./modules/sns"
}

module "dynamodb" {
  source = "./modules/dynamodb"
}

module "api_gateway" {
  source = "./modules/api_gateway"
}

module "iam" {
  source = "./modules/iam"
}

module "events" {
  source = "./modules/events"
}

module "data" {
  source = "./modules/data"
}
