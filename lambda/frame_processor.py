import boto3
import json
import os

s3 = boto3.client("s3")

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))

    for record in event["Records"]:
        bucket_name = record["s3"]["bucket"]["name"]
        object_key = record["s3"]["object"]["key"]

        print(f"Processing file: {object_key} from bucket: {bucket_name}")

        # تحميل الصورة من S3
        file_path = f"/tmp/{object_key.split('/')[-1]}"
        s3.download_file(bucket_name, object_key, file_path)

        # تحليل الصورة (هنا من الممكن استخدام خدمة مثل Rekognition)
        analyze_image(file_path, object_key)

    return {"statusCode": 200, "body": "Processing complete"}

def analyze_image(file_path, object_key):
    print(f"Analyzing image: {file_path}")

    rekognition = boto3.client("rekognition")

    with open(file_path, "rb") as image:
        response = rekognition.detect_labels(
            Image={"Bytes": image.read()},
            MaxLabels=10,
            MinConfidence=75
        )

    print("Rekognition response:", response)

    # حفظ البيانات في DynamoDB
    save_detection(response, object_key)

def save_detection(response, object_key):
    dynamodb = boto3.resource("dynamodb")
    table = dynamodb.Table(os.environ["DYNAMODB_TABLE"])

    detection_data = {
        "detection_id": object_key,
        "labels": json.dumps(response["Labels"]),
    }

    table.put_item(Item=detection_data)
