variable "project_name" {

}

variable "environment" {

}

variable "cidr_block" {
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    default = true
}

variable "common_tags" {
    type = map 
    default = {}
}