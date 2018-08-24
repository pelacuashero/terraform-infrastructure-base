variable "ami" {}
variable "instance_type" {}
variable "availability_zone" {}
variable "subnet_id" {}
variable "associate_public_ip_address" {}
variable "name" {}
variable "environment" {} 
variable "count" {}
variable "vpc_security_group_ids" {
    type        = "list"
}
