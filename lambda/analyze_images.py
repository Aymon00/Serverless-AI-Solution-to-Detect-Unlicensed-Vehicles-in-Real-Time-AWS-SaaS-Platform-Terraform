import boto3
import json

def lambda_handler(event, context):
    print("Analyzing image...")
    return {"statusCode": 200, "body": "Analysis complete"}
