#!/usr/bin/env bash
	echo "testing in23 blah lah inside  deploy  e  shel fl d   vs hc  d d cr ipt  v   "
configure_aws_cli() {
	aws --version 
	aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
	aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
	echo $AWS_ACCESS_KEY_ID
	echo $AWS_SECRET_ACCESS_KEY
	AWS_ACCOUNT_ID=123456789031
	
	#aws configure set default.region $AWS_REGION
	aws configure set default.output json
	echo "Configured AWS CLI."
}
configure_aws_cli
