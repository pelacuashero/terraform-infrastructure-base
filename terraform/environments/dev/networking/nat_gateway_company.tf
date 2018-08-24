module "nat-gateway-company" {
    source          = "./../../../modules/networking/nat_gateway"
    subnet_id       = "${module.subnet-public-company-a.public_subnet_id_out}"
    name            = "${var.name}"       
    environment     = "${var.environment}"
}