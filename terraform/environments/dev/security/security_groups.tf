data "terraform_remote_state" "networking" {
    backend     = "s3"
    config {
        bucket = "infrastructure-company-terraform"
        key    = "dev/networking/terraform.tfstate"
        region = "us-west-1"
    }
}

module "security_group_webserver" {
    source              = "./../../../modules/security/security_groups_predefined/web_server"
    vpc_id              = "${data.terraform_remote_state.networking.vpc_company_id_out}"
    environment         = "dev"
    cidr_blocks_ssh     = ["x.y.z.w/a" , "x.z.y.w/b"]
    cidr_blocks_http    = ["x.y.z.w/a"]
    cidr_blocks_https   = ["x.y.z.w/b"]     
}

module "security_group_mysqlserver" {
    source              = "./../../../modules/security/security_groups_predefined/mysql_server"
    vpc_id              = "${data.terraform_remote_state.networking.vpc_company_id_out}"
    environment         = "dev"
    cidr_blocks_mysql   = ["x.y.z.w/a" , "x.z.y.w/b"]    
}