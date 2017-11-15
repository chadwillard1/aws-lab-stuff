#!/bin/bash
aws ec2 describe-vpcs --query 'Vpcs[].{Name: Tags[?Value==`"Ext-Deerfield"`].Value|[0],VPCID: VpcId}|[?Name==`"Ext-Deerfield"`].VPCID|[0]'
