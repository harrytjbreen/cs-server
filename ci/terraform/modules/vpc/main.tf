resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.name
  }
}

resource "aws_security_group" "security_group" {
  name        = var.name
  description = "csgo server security group"
  vpc_id      = aws_vpc.vpc.id
  tags = {
    Name = var.name
  }

  ingress {
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [aws_vpc.vpc.cidr_block]
  }
}