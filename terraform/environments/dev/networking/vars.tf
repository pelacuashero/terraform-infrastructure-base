variable "vpc_cidr_block" {}
variable "aws_region" { default = "eu-west-1" }

variable "subnet_a_public_cidr_block" {}
variable "subnet_b_public_cidr_block" {}
variable "subnet_a_private_cidr_block" {}
variable "subnet_b_private_cidr_block" {}

variable "environment" {}
variable "subnet_a_az" {}
variable "subnet_b_az" {}

variable "name" {}