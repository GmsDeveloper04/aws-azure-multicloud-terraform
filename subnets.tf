resource "aws_subnet" "private_subnet-a" {
  availability_zone  = "${var.aws_region}a"
  vpc_id = aws_vpc.main.id
  cidr_block = var.aws_private_subnet_a_cidr

  tags = {
    Name = "${var.project_name}-private_subnet-a"
  }
}

resource "aws_subnet" "private_subnet-b" {
  availability_zone  = "${var.aws_region}b"
  vpc_id = aws_vpc.main.id
  cidr_block = var.aws_private_subnet_b_cidr

  tags = {
    Name = "${var.project_name}-private_subnet-b"
  }
}

resource "aws_subnet" "private_subnet-c" {
  availability_zone  = "${var.aws_region}c"
  vpc_id = aws_vpc.main.id
  cidr_block = var.aws_private_subnet_c_cidr

  tags = {
    Name = "${var.project_name}-private_subnet-c"
  }
}

resource "aws_subnet" "public_subnet-a" {
  vpc_id = aws_vpc.main.id
  map_public_ip_on_launch = true
  availability_zone = "${var.aws_region}a"
  cidr_block = var.aws_public_subnet_a_cidr

  tags = {
    Name = "${var.project_name}-public_subnet-a"
  }
}


output "private_subnet-a" {
  value = aws_subnet.private_subnet-a.id
}

output "private_subnet-b" {
  value = aws_subnet.private_subnet-b.id
}

output "private_subnet-c" {
  value = aws_subnet.private_subnet-c.id
}

output "public_subnet-a" {
  value = aws_subnet.public_subnet-a.id
}