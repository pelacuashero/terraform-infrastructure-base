# terraform-infrastructure-base
Build VPC with 2 public subnets and 2 private subnets, with backend on S3 Bucket for save tfstate


(UPDATE 16 AGO 2018)
I added compute module for create ec2 instances using data on s3 with tfstate 

(UPDATE 24 AGO 2018)
Currently I added module for create instances at public subnet and attach predefined Security groups (mysql, webserver, cassandra, elasticsearch, kafka, postgresql ports) for each instance 
I am still working on more modules 
