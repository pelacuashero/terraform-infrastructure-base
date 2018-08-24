resource "aws_security_group" "sg-elasticsearchserver"{
    vpc_id        = "${var.vpc_id}"
    name          = "sg_elasticsearchserver_company_${var.environment}" 
    description   = "Common Ports for instance with ElasticSearch Server Rol"
 
    ingress {
	    from_port 	= "9200"
		to_port		= "9200"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_elasticsearch_rest}"
	}

    ingress {
	    from_port 	= "9300"
		to_port		= "9300"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_elasticsearch_java}"
	}
	
	egress {
		from_port = "0"
		to_port = "0"
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
  
    tags {
        Name        = "sg_elasticsearchserver_company_${var.environment}"
        Environment = "${var.environment}"
    }
}