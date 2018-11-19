#!/usr/bin/env bash
	echo "testing blah blah inside deploy shell script"
	
configure_aws_cli() {
	aws --version
	aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
	aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
	echo $AWS_ACCESS_KEY_ID
	echo $AWS_SECRET_ACCESS_KEY
	AWS_ACCOUNT_ID=811558471333
	
	#aws configure set default.region $AWS_REGION
	aws configure set default.output json
	echo "Configured AWS CLI."
}
configure_aws_cli
