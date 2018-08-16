resource "aws_instance" "ec2" {
    ami                             = "${var.ami}"
    instance_type                   = "${var.instance_type}"
    count                           = "${var.count}"
    #key_name                        = "${var.key_name}"
    availability_zone               = "${var.availability_zone}"
    subnet_id                       = "${var.subnet_id}"
    associate_public_ip_address     = "${var.associate_public_ip_address}"
    tags{
        Name            = "${var.name}_company_${var.environment}_${count.index}"    
        Environment     = "${var.environment}"
    }
}