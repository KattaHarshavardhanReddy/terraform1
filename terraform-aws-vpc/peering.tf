resource "aws_vpc_peering_connection" "vpc_peering" {
    count = var.is_peering_required ? 1 : 0
  vpc_id        = aws_vpc.main.id #requestor
  peer_vpc_id   = local.default_vpc_id #acceptor
  auto_accept   = true


  tags = merge(
    var.common_tags,
    var.peering_tags,

  {
    Name = "${local.resource_name}-default"
  }
  )
}


resource "aws_route" "public_peering" {
    count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = local.default_vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering[count.index].id
}

