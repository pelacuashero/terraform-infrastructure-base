module "public-subnet" {
    source                      = "./../subnet"
    environment                 = "${var.environment}"
    name                        = "${var.name}"
    cidr_block                  = "${var.cidr_block}"
    availability_zone           = "${var.availability_zone}"
    vpc_id                      = "${var.vpc_id}"
    map_public_ip_on_launch     = "true"
    purpose                     = "public"
    zone                        = "${var.zone}"
}

resource "aws_route_table_association" "public-route-table-association" {
    subnet_id                   = "${module.public-subnet.subnet_id_out}"
    route_table_id              = "${var.route_table_id}"
}