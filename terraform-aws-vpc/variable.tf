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

variable "igw_tags" {
    
    default = {}
}

variable "public_subnet_cidr" {
    type = list 
    validation {
        condition = length(var.public_subnet_cidr)  == 2
        error_message = "please provide min 2 subnet id's"
    }
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidr" {
    type = list 
    validation {
        condition = length(var.private_subnet_cidr)  == 2
        error_message = "please provide min 2 subnet id's"
    }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidr" {
    type = list 
    validation {
        condition = length(var.database_subnet_cidr)  == 2
        error_message = "please provide min 2 subnet id's"
    }
}

variable "database_subnet_tags" {
    default = {}
}

variable "nat_gw_tags" {
    default = {}
}

variable "public_route_tags" {
    default = {}
}

variable "private_route_tags" {
    default = {}
}

variable "database_route_tags" {
    default = {}
}

variable "is_peering_required" {
    default = false
}

variable "peering_tags" {
    default = {}
}