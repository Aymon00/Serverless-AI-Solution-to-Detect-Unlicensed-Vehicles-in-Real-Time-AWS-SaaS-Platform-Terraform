# GitHub Actions Workflows

This directory contains GitHub Actions workflows to automate various tasks related to the **Serverless AI Solution to Detect Unlicensed Vehicles in Real-Time** project.

## Workflows

### 1. `deploy_lambda.yml`
- Automates the deployment of AWS Lambda functions.
- Ensures that the latest version of the Lambda code is packaged and deployed.

### 2. `terraform_apply.yml`
- Automates the deployment of the infrastructure using Terraform.
- Applies Terraform configurations to provision AWS services.

## How It Works
- Workflows are triggered automatically on code changes or manually when required.
- Uses GitHub Secrets to securely manage AWS credentials and Terraform variables.

## How to Modify Workflows
- Update workflow triggers, AWS settings, or Terraform configurations by modifying `.yml` files inside `.github/workflows/`.

For more details, refer to each workflow file.
