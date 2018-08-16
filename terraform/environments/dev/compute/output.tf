# outputs produced at the end of a terraform apply: id of the instances, id of
output "common_centos_id_out" {
    value = "${module.common-centos.public-ec2-id-out}"
}