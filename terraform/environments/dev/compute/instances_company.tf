data "terraform_remote_state" "networking" {
    backend     = "s3"
    config {
        bucket = "infrastructure-company-terraform"
        key    = "dev/networking/terraform.tfstate"
        region = "us-west-1"
    }
}

data "terraform_remote_state" "security" {
    backend     = "s3"
    config {
        bucket = "infrastructure-company-terraform"
        key    = "dev/security/terraform.tfstate"
        region = "us-west-1"
    }
}

module "common-centos" {
    source                          = "./../../../modules/compute/public_ec2"
    ami                             = "${var.ami}"
    count                           = "${var.common_centos}"
    instance_type                   = "${var.instance_type}"
    availability_zone               = "${var.subnet_a_az}"
    subnet_id                       = "${data.terraform_remote_state.networking.subnet_public_company_a_id_out}"
    vpc_security_group_ids          =   [
                                            "${data.terraform_remote_state.security.security_group_webserver_id_out}" ,
                                            "${data.terraform_remote_state.security.security_group_mysqlserver_id_out}"
                                        ]
    name                            = "common-centos"
}
