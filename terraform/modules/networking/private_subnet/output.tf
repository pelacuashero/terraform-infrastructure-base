# outputs produced at the end of a terraform apply: id of the private subnet
output "private_subnet_id_out" {
    value = "${module.private-subnet.subnet_id_out}"
}