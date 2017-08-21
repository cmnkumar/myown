#!/usr/bin/env bash
	echo "inside deploy shell script"
  
AWS_ACCESS_KEY_ID=$(eval "echo $$AWS_ACCESS_KEY_ID")
AWS_SECRET_ACCESS_KEY=$(eval "echo $$AWS_SECRET_ACCESS_KEY")



configure_aws_cli() {
	aws --version
	aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
	aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
	#aws configure set default.region $AWS_REGION
	aws configure set default.output json
	aws configure
	echo "Configured AWS CLI."
}
configure_aws_cli
