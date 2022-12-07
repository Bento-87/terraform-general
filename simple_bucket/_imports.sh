#! /bin/bash


accountid="" #Target Account ID 
bucketName="terraform-tfstates-$accountid"
policyName="tfstates_bucket"
acl="private"


#S3 Imports
terraform import aws_s3_bucket.this $bucketName
terraform import aws_s3_bucket_versioning.this $bucketName
terraform import aws_s3_bucket_public_access_block.this $bucketName
terraform import aws_s3_bucket_acl.this $bucketName,$acl


#IAM_POLICY Imports
terraform import aws_iam_policy.this_bucket_policy arn:aws:iam::$accountid:policy/$policyName