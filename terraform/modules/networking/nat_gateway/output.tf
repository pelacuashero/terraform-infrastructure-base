# outputs produced at the end of a terraform apply: id and ip of NAT gateway
output "nat_gateway_id_out" {
    value   = "${aws_nat_gateway.nat-gateway.id}"
}

output "eip_id_out" {
    value   = "${aws_eip.eip.id}"
}