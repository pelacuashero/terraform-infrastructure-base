variable "vpc_id" {}
variable "environment" {}
variable "cidr_blocks_ssh" {
    type    = "list"
}

variable "cidr_blocks_http" {
    type    = "list"
}

variable "cidr_blocks_https" {
    type    = "list"
}