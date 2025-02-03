#!/bin/bash
###### Aws resorces S3,EC2,LAMDA AS IAM Users are tracked and reported


##Listing S3 buckets
echo -e "\e[32m  list of s3\e[0m"
aws s3 ls

##listing ec2
echo -e "\e[32m  list of ec2 instances\e[0m"
aws ec2 describe-instances | jq '.Reservations[].Instances[].INstanceId'

#listing aws lamba functions
echo -e "\e[32m list of lambda functions\e[0m"
aws lambda list-functions | jq '.Functions[]'

#listing iam users
echo -e "\e[32m list of iam users\e[0m"
aws iam list-users | jq '.Users[].UserName'