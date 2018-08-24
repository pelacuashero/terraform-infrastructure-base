# terraform-infrastructure-base
Build VPC with 2 public subnets and 2 private subnets, with backend on S3 Bucket for save tfstate


(UPDATE 16 AGO 2018)
I added compute module for create ec2 instances using data on s3 with tfstate 

(UPDATE 24 AGO 2018)
Currently I added module for create instances at public subnet and attach predefined Security groups (mysql, webserver, cassandra, elasticsearch, kafka, postgresql ports) for each instance 
I am still working on more modules 

## The Commands

These are the commands that will be at the core of every demo contained in this repository:

terraform get
terraform plan
terraform apply
terraform destroy
Before progressing into any demos, it is also very important to understand 'state' in the context of Terraform, how it is fits in and the criticality of state file management.

Directory Structure
Each directory level will have a explanation of how the sub-directories are all structured, what is contained in them and why they should be set out this way.

This is the base of the Terraform repository, inclusive of sub-directories that are named after the cloud providers that you wish to deploy into using Terraform.
