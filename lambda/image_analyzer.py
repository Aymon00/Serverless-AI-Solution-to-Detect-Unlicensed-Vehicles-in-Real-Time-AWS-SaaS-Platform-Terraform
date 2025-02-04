import boto3
import json
import os

sns = boto3.client("sns")

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))

    for record in event["Records"]:
        body = json.loads(record["body"])

        labels = json.loads(body["labels"])
        print(f"Detected labels: {labels}")

        if "Car" in [label["Name"] for label in labels]:
            send_alert(body)

    return {"statusCode": 200, "body": "Analysis complete"}

def send_alert(body):
    message = f"🚗 Car detected! Details: {json.dumps(body)}"

    response = sns.publish(
        TopicArn=os.environ["SNS_TOPIC_ARN"],
        Message=message,
        Subject="Car Detection Alert"
    )

    print(f"Alert sent: {response}")
