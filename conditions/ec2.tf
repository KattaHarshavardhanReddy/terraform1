resource "aws_instance" "this" {
  ami = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
  tags = var.ec2_tags
}
  


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  
    ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = "tcp"
    cidr_blocks      = var.ingress_cidr_blocks
    }

    egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1"
    cidr_blocks      = var.egress_cidr_blocks
    }

  tags = var.sg_tags
}