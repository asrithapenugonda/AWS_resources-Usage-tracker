#!/bin/bash
###### Aws resorces S3,EC2,LAMDA AS IAM Users are tracked and reported


##Listing S3 buckets

aws s3 ls

##listing ec2

aws ec2 describe-instances

#listing aws lamba functions

aws lamda list-functions

#listing iam users

aws iam list_users