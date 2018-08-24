variable "ami" {}
variable "instance_type" {}
variable "availability_zone" {}
variable "subnet_id" {}
variable "name" {}
variable "count" {}
variable "vpc_security_group_ids" {
    type        = "list"
}
