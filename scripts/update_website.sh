#!/bin/bash

cd terraform || exit

S3_BUCKET=$(terraform output -raw s3_bucket_name)

if [ -z "$S3_BUCKET" ]; then
  echo "Failed to retrieve S3 bucket name from Terraform output."
  exit 1
fi

cd ../website || exit

aws s3 sync . "s3://$S3_BUCKET"

echo "Website content updated successfully!"




