resource "aws_security_group" "sg-cassandraserver"{
    vpc_id        = "${var.vpc_id}"
    name          = "sg_cassandraserver_company_${var.environment}" 
    description   = "Common Ports for instance with Cassandra Server Rol"
 
    ingress {
	    from_port 	= "9042"
		to_port		= "9042"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_cassandra_clients}"
	}

    ingress {
	    from_port 	= "9160"
		to_port		= "9160"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_cassandra_thrift_clients}"
	}

    ingress {
	    from_port 	= "7199"
		to_port		= "7199"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_cassandra_jmx}"
	}
	
	egress {
		from_port = "0"
		to_port = "0"
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
  
    tags {
        Name        = "sg_cassandraserver_company_${var.environment}"
        Environment = "${var.environment}"
    }
}