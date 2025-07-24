module "vpc" {
    source = "../terraform-aws-vpc"
    project_name = "expense"
    environment = "dev"
}