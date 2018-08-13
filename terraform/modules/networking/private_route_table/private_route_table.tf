module "private-route-table" {
    source          = "./../route_table"
    environment     = "${var.environment}"
    purpose         = "private"
    name            = "${var.name}"
    vpc_id          = "${var.vpc_id}"
}

resource "aws_route" "private-route" {
    route_table_id            = "${module.private-route-table.route_table_id_out}"
    destination_cidr_block    = "${var.destination_cidr_block}"
    nat_gateway_id            = "${var.nat_gateway_id}"
}