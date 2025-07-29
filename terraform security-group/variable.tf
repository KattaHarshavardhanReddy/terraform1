variable "project_name" {

}

variable "environment" {

}

variable "sg_name" {

}

variable "sg_description" {
    
}

variable "vpc_id" {
    
}

#mandatory
variable "common_tags" {
    type = map 
}

#optional
variable "sg_tags" {
    default = {}
}