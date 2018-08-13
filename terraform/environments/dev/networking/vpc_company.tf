module "vpc-company" {
    source      = "./../../../modules/networking/vpc"
    cidr_block  = "${var.vpc_cidr_block}"
    environment = "${var.environment}"
    name        = "${var.name}"
}