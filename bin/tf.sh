#!/bin/bash
action=$1
workspace=$2
region=$3
s3_bucket='dhewy-state-files'

console_error(){
	echo "Error: ${1}";
	exit 1;
}

validate_input(){
	if [ -z $action ] ||
	   [ -z $workspace ] ||
	   [ -z $region ]; then
		console_error 'Required arguments are missing. Build failed.'
	fi
}

terraform_installed=$(command -v terraform)
if [[ -z "$terraform_installed" ]]; then
	console_error 'Terraform must be installed! Build failed.'
fi

# Do some input validation
validate_input

echo "Action: ${1}"
echo "Workspace: ${2}"
echo "Region: ${3}"

# jump around
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
