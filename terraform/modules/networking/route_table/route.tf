resource "aws_route_table" "route-table" {
    vpc_id = "${var.vpc_id}"

    tags {
        Name = "${var.purpose}_route_table_${var.name}_${var.environment}"
        Environment = "${var.environment}"
    }
}