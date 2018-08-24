module "public-ec2" {
    source                          = "./../ec2"
    ami                             = "${var.ami}"
    instance_type                   = "${var.instance_type}"
    count                           = "${var.count}" 
    availability_zone               = "${var.availability_zone}"
    subnet_id                       = "${var.subnet_id}"
    associate_public_ip_address     = "true"
    vpc_security_group_ids          = "${var.vpc_security_group_ids}"
    name                            = "${var.name}"
    environment                     = "dev"
}