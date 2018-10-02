#!/bin/bash
action=$1
workspace=$2
region=$3
s3_bucket='example-terraform-state-files'

echo "Action: ${1}"
echo "Workspace: ${2}"
echo "Region: ${3}"

cd ../

# symlink in the component backend.
ln -sf ../../components/backend.tf ./terraform/environments/$workspace/

# shift into workspace
cd terraform/environments/$workspace
rm -rf .terraform

terraform init -backend-config "bucket=${s3_bucket}" -backend-config "key=environments/${workspace}.tfstate" -backend-config "region=${region}"

# jump into the correct workspace to be sure
# terraform workspace select $workspace terraform/environments/$workspace

# Do all manner of other things
# - Error checking?
# - tfvar file loading


terraform $action

# shift back
cd -
