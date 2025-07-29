variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "sg_name" {
  default = "mysql"
}

variable "common_tags" {
  default = {
    project = "expense"
    environment = "dev"
    terraform = true
  }
}

variable "vpc_id" {

}
