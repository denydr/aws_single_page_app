#!/bin/bash

cd terraform || exit
# this removes all deployed elements from AWS
terraform destroy -auto-approve

echo "Infrastructure destroyed successfully!"