resource "aws_security_group" "sg-mysqlserver"{
    vpc_id        = "${var.vpc_id}"
    name          = "sg_mysqlserver_company_${var.environment}" 
    description   = "Common Ports for instance with MySQL Server Rol"
 
    ingress {
	    from_port 	= "3306"
		to_port		= "3306"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_mysql}"
	}
	
	egress {
		from_port = "0"
		to_port = "0"
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
  
    tags {
        Name        = "sg_mysqlserver_company_${var.environment}"
        Environment = "${var.environment}"
    }
}