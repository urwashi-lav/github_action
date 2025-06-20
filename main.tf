provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami                    = var.ami# Replace with your desired AMI
  instance_type          = var.instance_type
  key_name               = aws_key_pair.web-host.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "infra-ec2"
  }
}
resource "aws_security_group" "web_sg" {
  name        = "infra-sg"
  description = "Allow SSH and HTTP"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow from anywhere (limit to IP for better security)
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_key_pair" "web-host" {
  key_name   = "web-host"
  public_key = var.public_key
}




