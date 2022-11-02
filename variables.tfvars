#RUN COMMAND terraform apply -var-file .\enviroment\development_vars.tfvars

#PROVIDER
aws_region = "us-east-1"

#GENERAL
project_name= "lorem-ipsum"

#VPC
aws_vpc_cidr = "172.32.0.0/16"
aws_private_subnet_a_cidr = "172.32.0.0/20"
aws_private_subnet_b_cidr = "172.32.16.0/20"
aws_private_subnet_c_cidr = "172.32.32.0/20"
aws_vpc_enable_dns_hostnames = true
aws_public_subnet_a_cidr= "172.32.48.0/20"