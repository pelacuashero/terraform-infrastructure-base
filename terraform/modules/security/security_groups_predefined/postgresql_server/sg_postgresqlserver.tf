resource "aws_security_group" "sg-postgresql"{
    vpc_id        = "${var.vpc_id}"
    name          = "sg_postgresqlserver_company_${var.environment}" 
    description   = "Common Ports for instance with PostgreSQL Server Rol"
 
    ingress {
	    from_port 	= "5432"
		to_port		= "5432"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_postgresql}"
	}
	
	egress {
		from_port = "0"
		to_port = "0"
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
  
    tags {
        Name        = "sg_postgresqlserver_company_${var.environment}"
        Environment = "${var.environment}"
    }
}