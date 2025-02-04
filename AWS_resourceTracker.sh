#!/bin/bash
###### Aws resorces S3,EC2,LAMDA AS IAM Users are tracked and reported
#### and redirecting to a file

##Listing S3 buckets

touch resouceTracker
echo -e "\e[32m  list of s3\e[0m"     >>resouceTracker
aws s3 ls   >>resouceTracker

##listing ec2
echo -e "\e[32m  list of ec2 instances\e[0m"  >>resouceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >>resouceTracker

#listing aws lamba functions
echo -e "\e[32m list of lambda functions\e[0m"    >>resouceTracker
aws lambda list-functions | jq '.Functions[]'      >>resouceTracker

#listing iam users
echo -e "\e[32m list of iam users\e[0m"    >>resouceTracker
aws iam list-users | jq '.Users[].UserName'    >>resouceTracker

echo -e "\e[31m For output file open resourceTracker\e[0m"

crontab -e