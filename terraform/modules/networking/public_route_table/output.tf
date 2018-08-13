# outputs produced at the end of a terraform apply: id of base route table
output "public_route_table_id_out" {
    value = "${module.public-route-table.route_table_id_out}"
}