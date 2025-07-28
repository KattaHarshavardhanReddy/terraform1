module "vpc" {
    source = "../terraform-aws-vpc"
    project_name = var.project_name
    environment = var.environment
}