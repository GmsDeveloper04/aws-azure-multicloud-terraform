resource "aws_instance" "server" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet-a.id
  vpc_security_group_ids = [aws_security_group.server.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key_pair.key_name
  user_data = file("user_data/server_user_data.sh")

  tags = {
    Name = "${var.project_name}-ubuntu-server"
  }
}

resource "aws_instance" "cliente-a" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet-a.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.cliente.id]
  key_name = aws_key_pair.key_pair.key_name
  user_data = file("user_data/cliente_user_data.sh")

  tags = {
    Name = "${var.project_name}-ubuntu-cliente-a"
  }
}

resource "aws_instance" "cliente-b" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet-a.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.cliente.id]
  key_name = aws_key_pair.key_pair.key_name
  user_data = file("user_data/cliente_user_data.sh")

  tags = {
    Name = "${var.project_name}-ubuntu-cliente-a"
  }
}

resource "aws_instance" "cliente-c" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet-a.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.cliente.id]
  key_name = aws_key_pair.key_pair.key_name
  user_data = file("user_data/cliente_user_data.sh")

  tags = {
    Name = "${var.project_name}-ubuntu-cliente-a"
  }
}

