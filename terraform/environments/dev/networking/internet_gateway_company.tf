module "internet-gateway-company" {
    source          = "./../../../modules/networking/gateway"
    vpc_id          = "${module.vpc-company.vpc_id_out}"             
    environment     = "${var.environment}"
    name            = "${var.name}"
}