module "public-route-table" {
    source          = "./../route_table"
    environment     = "${var.environment}"
    name            = "${var.name}"
    vpc_id          = "${var.vpc_id}"
    purpose         = "public"
}

resource "aws_route" "public-route" {
    route_table_id          = "${module.public-route-table.route_table_id_out}"
    destination_cidr_block  = "${var.destination_cidr_block}"
    gateway_id              = "${var.gateway_id}"
}