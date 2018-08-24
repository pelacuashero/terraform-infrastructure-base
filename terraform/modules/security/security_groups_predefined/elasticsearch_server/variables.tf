variable "vpc_id" {}
variable "environment" {}
variable "cidr_blocks_elasticsearch_rest" {
    type    = "list"
}

variable "cidr_blocks_elasticsearch_java" {
    type    = "list"
}