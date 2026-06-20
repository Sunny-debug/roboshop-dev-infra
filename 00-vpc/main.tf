module "vpc" {
  source = "git::https://github.com/Sunny-debug/terraform-aws-vpc.git?ref=main"  
    
# VPC Module Variables
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
    public_subnet_cidr = var.public_subnet_cidr    # Public Subnet
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr

    is_peering_enabled = false
}