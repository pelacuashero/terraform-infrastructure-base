resource "aws_internet_gateway" "internet-gateway" {
    vpc_id              = "${var.vpc_id}"

    tags {
        Name            = "internet_gateway_${var.name}_${var.environment}"    
        Environment     = "${var.environment}"
    }
}