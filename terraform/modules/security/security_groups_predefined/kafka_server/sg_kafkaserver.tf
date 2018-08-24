resource "aws_security_group" "sg-kafkaserver"{
    vpc_id        = "${var.vpc_id}"
    name          = "sg_kafkaserver_company_${var.environment}" 
    description   = "Common Ports for instance with Kafka Server Rol"
 
    ingress {
	    from_port 	= "9092"
		to_port		= "9092"
		protocol 	= "tcp"
		cidr_blocks = "${var.cidr_blocks_kafka_broker}"
	}
	
	egress {
		from_port = "0"
		to_port = "0"
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
  
    tags {
        Name        = "sg_kafkaserver_company_${var.environment}"
        Environment = "${var.environment}"
    }
}