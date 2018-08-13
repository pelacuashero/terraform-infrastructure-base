# outputs produced at the end of a terraform apply: id of internet gateway
output "internet_gateway_id_out" {
    value  = "${aws_internet_gateway.internet-gateway.id}"
}