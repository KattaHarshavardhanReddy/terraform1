module "mysql_sg" {
    source = "../terraform-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_name
    sg_description = "created for mysql module"
    vpc_id = 
}