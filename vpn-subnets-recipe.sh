#!/bin/bash
aws ec2 create-vpc --cli-input-json file://deerfield-vpc-recipe.js
aws ec2 describe-vpcs
#aws ec2 create-tags --cli-input-json
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
