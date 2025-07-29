module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/KattaHarshavardhanReddy/terraform1.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
    is_peering_required = true
}