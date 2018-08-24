resource "aws_security_group" "sg-webserver"{
    vpc_id        = "${var.vpc_id}"
    name          = "sg_webserver_company_${var.environment}" 
    description   = "Common Ports for instance with Web Server Rol"
 
    ingress {
	    from_port 	= "22"
		to_port		= "22"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_ssh}"
	}

    ingress {
	    from_port 	= "80"
		to_port		= "80"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_http}"
	}

    ingress {
	    from_port 	= "443"
		to_port		= "443"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_https}"
	}

	
	egress {
		from_port = "0"
		to_port = "0"
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
  
    tags {
        Name        = "sg_webserver_company_${var.environment}"
        Environment = "${var.environment}"
    }
}