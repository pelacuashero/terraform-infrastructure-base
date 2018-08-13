
resource "aws_eip" "eip" {
    vpc        = "true"
}

resource "aws_nat_gateway" "nat-gateway" {
    allocation_id   = "${aws_eip.eip.id}"
    subnet_id       = "${var.subnet_id}"

    tags {
        Name            = "nat_gateway_${var.name}_${var.environment}"    
        Environment     = "${var.environment}"
    }
}
