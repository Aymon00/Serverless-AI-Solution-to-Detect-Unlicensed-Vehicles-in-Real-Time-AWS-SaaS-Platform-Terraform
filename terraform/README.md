main.tf: Calls all Terraform modules and defines resource dependencies.

providers.tf: Defines AWS provider and authentication settings.

variables.tf: Stores all configurable variables.

outputs.tf: Specifies output values such as S3 bucket name and API URL.

backend.tf: Configures Terraform remote backend using S3 & DynamoDB.

modules/s3.tf: Defines an S3 bucket for storing processed images.
