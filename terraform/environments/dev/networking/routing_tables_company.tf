module "route-table-public-company" {
    source                  = "./../../../modules/networking/public_route_table"
    environment             = "${var.environment}"
    name                    = "${var.name}"
    vpc_id                  = "${module.vpc-company.vpc_id_out}"
    gateway_id              = "${module.internet-gateway-company.internet_gateway_id_out}"
    destination_cidr_block  = "0.0.0.0/0"

}

module "route-table-private-company" {
    source                      = "./../../../modules/networking/private_route_table"
    environment                 = "${var.environment}"
    name                        = "${var.name}"
    vpc_id                      = "${module.vpc-company.vpc_id_out}"
    nat_gateway_id              = "${module.nat-gateway-company.nat_gateway_id_out}"
    destination_cidr_block      = "0.0.0.0/0"
}