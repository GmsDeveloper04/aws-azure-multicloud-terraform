resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.main.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.project_name}-rtb_public"
  }
}

resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = aws_subnet.public_subnet-a.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rta_subnet-a_private" {
  subnet_id      = aws_subnet.private_subnet-a.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rta_subnet-b_private" {
  subnet_id      = aws_subnet.private_subnet-b.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rta_subnet-c_private" {
  subnet_id      = aws_subnet.private_subnet-c.id
  route_table_id = aws_route_table.rtb_public.id
}

