module  "subnet-public-company-a" {
    source                  = "./../../../modules/networking/public_subnet"
    environment             = "${var.environment}"
    name                    = "${var.name}"
    vpc_id                  = "${module.vpc-company.vpc_id_out}"
    cidr_block              = "${var.subnet_a_public_cidr_block}"
    environment             = "${var.environment}"   
    availability_zone       = "${var.subnet_a_az}"
    zone                    = "a"
    route_table_id          = "${module.route-table-public-company.public_route_table_id_out}"
}

module  "subnet-public-company-b" {
    source                  = "./../../../modules/networking/public_subnet"
    environment             = "${var.environment}"
    name                    = "${var.name}"
    vpc_id                  = "${module.vpc-company.vpc_id_out}"
    cidr_block              = "${var.subnet_b_public_cidr_block}"
    environment             = "${var.environment}"   
    availability_zone       = "${var.subnet_b_az}"
    zone                    = "b"
    route_table_id          = "${module.route-table-public-company.public_route_table_id_out}"
}

module  "subnet-private-company-a" {
    source                  = "./../../../modules/networking/private_subnet"
    environment             = "${var.environment}"
    name                    = "${var.name}"
    vpc_id                  = "${module.vpc-company.vpc_id_out}"
    cidr_block              = "${var.subnet_a_private_cidr_block}"
    environment             = "${var.environment}"   
    availability_zone       = "${var.subnet_a_az}"
    zone                    = "a"
    route_table_id          = "${module.route-table-private-company.private_route_table_id_out}"
}

module  "subnet-private-company-b" {
    source                  = "./../../../modules/networking/private_subnet"
    environment             = "${var.environment}"
    name                    = "${var.name}"
    vpc_id                  = "${module.vpc-company.vpc_id_out}"
    cidr_block              = "${var.subnet_b_private_cidr_block}"
    environment             = "${var.environment}"   
    availability_zone       = "${var.subnet_b_az}"
    zone                    = "b"
    route_table_id          = "${module.route-table-private-company.private_route_table_id_out}"
}