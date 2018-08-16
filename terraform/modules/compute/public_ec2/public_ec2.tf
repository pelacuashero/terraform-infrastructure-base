module "public-ec2" {
    source                          = "./../ec2"
    ami                             = "${var.ami}"
    instance_type                   = "${var.instance_type}"
    count                           = "${var.count}" 
    #key_name                        = "${var.key_name}"
    availability_zone               = "${var.availability_zone}"
    subnet_id                       = "${var.subnet_id}"
    associate_public_ip_address     = "true"
    name                            = "${var.name}"
    environment                     = "dev"
}