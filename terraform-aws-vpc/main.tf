resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "dedicated"
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge (
    var.common_tags,
    {
        Name = local.resource_name
    }
  )
}