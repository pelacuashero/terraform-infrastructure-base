# outputs produced at the end of a terraform apply: id of the instances, id of
output "security_group_webserver_id_out" {
    value = "${module.security_group_webserver.sg-webserver-id-out}"
}

output "security_group_mysqlserver_id_out" {
    value = "${module.security_group_mysqlserver.sg-mysqlserver-id-out}"
}