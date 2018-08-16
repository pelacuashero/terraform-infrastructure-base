data "terraform_remote_state" "networking" {
    backend     = "s3"
    config {
        bucket = "infrastructure-company-terraform"
        key    = "dev/networking/terraform.tfstate"
        region = "us-west-1"
    }
}

module "common-centos" {
    source                          = "./../../../modules/compute/public_ec2"
    ami                             = "${var.ami}"
    count                           = "${var.common_centos}"
    instance_type                   = "${var.instance_type}"
    #key_name                        = "${var.key_name}"
    availability_zone               = "${var.subnet_a_az}"
    subnet_id                       = "${data.terraform_remote_state.networking.subnet_public_company_a_id_out}"
    name                            = "common-centos"
}

#PRIVATE INSTANCES
