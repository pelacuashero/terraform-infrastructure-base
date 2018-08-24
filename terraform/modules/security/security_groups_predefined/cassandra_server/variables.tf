variable "vpc_id" {}
variable "environment" {}
variable "cidr_blocks_cassandra_clients" {
    type    = "list"
}

variable "cidr_blocks_cassandra_thrift_clients" {
    type    = "list"
}

variable "cidr_blocks_cassandra_jmx" {
    type    = "list"
}