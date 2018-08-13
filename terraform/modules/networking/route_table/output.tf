# outputs produced at the end of a terraform apply: id of base route table
output "route_table_id_out" {
    value = "${aws_route_table.route-table.id}"
}