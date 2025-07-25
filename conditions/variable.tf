variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "environment" {
    type = string
    default = "prod"
}

variable "instance_type" {
    type = map
    default = {
        dev = "t3.small"
        prod = "t3.micro"
    }
}

variable "ec2_tags" {
    type = map
    default = {
        project = "expense"
        component = "backend"
        environment = "prod"
        Name = "expense_backend_prod"
    }
}

variable "ingress_from_port" {
    type = number
    default = 22
}

variable "ingress_to_port" {
    type = number
    default = 22
}

variable "ingress_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "egress_from_port" {
    type = number
    default = 0
}

variable "egress_to_port" {
    type = number
    default = 0
}

variable "egress_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {

        name = "allow_tls"
    }
}