# TERRAFORM

This repository aims to provide a helpful set of structural guidelines for build a VPC with 2 public subnets and 2 private subnets, with backend on S3 Bucket for save tfstate
Currently I added module for create instances at public subnet and attach predefined Security groups (mysql, webserver, cassandra, elasticsearch, kafka, postgresql ports) for each instance 
I am still working on more modules

##  The Commands

 - terrafom get
 - terrafom plan
 - terrafom apply
 - terraform destroy
