# outputs produced at the end of a terraform apply: id of the public subnet
output "public_subnet_id_out" {
    value = "${module.public-subnet.subnet_id_out}"
}