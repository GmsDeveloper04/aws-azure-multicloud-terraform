

resource "aws_security_group" "cliente" {
  name        = "${var.project_name}-ec2-cliente"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all from anywhere"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sg-${var.project_name}-ec2-server"
  }
}