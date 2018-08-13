resource "aws_subnet" "subnet" {
    cidr_block                  = "${var.cidr_block}"
    availability_zone           = "${var.availability_zone}"
    vpc_id                      = "${var.vpc_id}"
    map_public_ip_on_launch     = "${var.map_public_ip_on_launch}"

    tags{
        Name            = "${var.purpose}_subnet_${var.name}_${var.environment}_${var.zone}"    
        Environment     = "${var.environment}"
    }
}