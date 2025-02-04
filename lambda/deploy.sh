#!/bin/bash

set -e

LAMBDA_DIR="lambda"
ZIP_FILE="lambda_package.zip"

cd $LAMBDA_DIR
pip install -r requirements.txt -t .
zip -r9 ../$ZIP_FILE .
cd ..

aws lambda update-function-code --function-name car-detection-frame-processor --zip-file fileb://$ZIP_FILE
aws lambda update-function-code --function-name car-detection-image-analyzer --zip-file fileb://$ZIP_FILE

echo "Deployment complete!"
