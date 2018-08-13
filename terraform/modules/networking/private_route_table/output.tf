# outputs produced at the end of a terraform apply: id of private route table
output "private_route_table_id_out" {
    value = "${module.private-route-table.route_table_id_out}"
}