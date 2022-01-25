#!/bin/bash
AMI_ID=$(aws ec2 describe-images --filters "Name=name,Values=Centos-7-DevOps-Practice" --query 'Images[*].[ImageId]' --output text
)
if [ -z "${AMI_ID}" ]; then
  echo "unable to find the image AMI"
else
  AMI ID = ${AMI_ID}
fi


