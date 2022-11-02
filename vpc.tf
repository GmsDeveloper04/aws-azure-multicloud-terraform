data "aws_availability_zones" "available" {}

resource "aws_vpc" "main" {
  cidr_block = var.aws_vpc_cidr
  enable_dns_hostnames = var.aws_vpc_enable_dns_hostnames

  tags = {
    Name = "Main"
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}