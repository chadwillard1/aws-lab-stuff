#!/bin/bash

#OLD_VPC_LIST=$(aws ec2 describe-vpcs --query 'Vpcs[].VpcId')
#cut the brackets off the json list
#OLD_VPC_LIST=${OLD_VPC_LIST#[}
#OLD_VPC_LIST=${OLD_VPC_LIST%]}
#echo OLD: $OLD_VPC_LIST

aws ec2 create-vpc --cli-input-json file://df-vpc-recipe.js --query 'Vpc.VpcId'

#NEW_VPC_LIST=$(aws ec2 describe-vpcs --query 'Vpcs[].VpcId')
#NEW_VPC_LIST=${NEW_VPC_LIST#[}
#NEW_VPC_LIST=${NEW_VPC_LIST%]}
#echo NEW: $NEW_VPC_LIST

#for i in $NEW_VPC_LIST 
#	do
#		echo $i
#	done
#	#aws ec2 create-tags --cli-input-json
#{
#	"DryRun": true, 
#       "Resources": 
#	   ["vpc-616e7408"],
#	"Tags": 
#	   [{
#	  "Key": "Name", 
#	  "Value": "Ext-Deerfield"
#	        }]
# 	}

