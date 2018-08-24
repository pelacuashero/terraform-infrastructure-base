# outputs produced at the end of a terraform apply: id of VPC, internet gateway
##### VPC id #####
output "vpc_company_id_out" {
    value       = "${module.vpc-company.vpc_id_out}" 
}

##### 2SUBNET Public id's , 2SUBNET Private id's ##### 
output "subnet_public_company_a_id_out" {
    value       = "${module.subnet-public-company-a.public_subnet_id_out}" 
}
output "subnet_public_company_b_id_out" {
    value       = "${module.subnet-public-company-b.public_subnet_id_out}" 
}
output "subnet_private_company_a_id_out" {
    value       = "${module.subnet-private-company-a.private_subnet_id_out}" 
}
output "subnet_private_company_b_id_out" {
    value       = "${module.subnet-private-company-b.private_subnet_id_out}" 
}

##### 2ROUTE TABLES id's#####
output "route_table_public_company_id_out" {
    value       = "${module.route-table-public-company.public_route_table_id_out}" 
}
output "route_table_private_company_id_out" {
    value       = "${module.route-table-private-company.private_route_table_id_out}" 
}

##### INTERNET GATEWAY id #####
output "internet_gateway_company_id_out" {
    value       = "${module.internet-gateway-company.internet_gateway_id_out}" 
}

##### NAT GATEWAY id #####
output "nat_gateway_company_id_out" {
    value       = "${module.nat-gateway-company.nat_gateway_id_out}" 
}
