#PROVIDER
variable "aws_region" {
  default = "sa-east-1"
  type = string
  description = "Região da AWS que a infraestrutura será provisioanda"
}


#VPC

variable "aws_vpc_cidr" {
  type = string
  description = "Bloco de ips disponíveis na VPC"
}

#SUBNETS 

variable "aws_private_subnet_a_cidr" {
  type = string
  description = "Bloco de ips disponíveis na subnet da AZ a"
}

variable "aws_private_subnet_b_cidr" {
  type = string
   description = "Bloco de ips disponíveis na subnet da AZ b"
}

variable "aws_private_subnet_c_cidr" {
  type = string
  description = "Bloco de ips disponíveis na subnet da AZ c"
}

variable "aws_vpc_enable_dns_hostnames" {
  type = bool
  description = "ativar ou não DNS hostnames"
}


variable "aws_public_subnet_a_cidr" {
  type = string
  description = "Bloco de ips disponíveis na subnet da AZ c"
}

variable "project_name" {
  type = string
  description = "Nome do projeto"
}