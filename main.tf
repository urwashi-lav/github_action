provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b7de67988bf1a282" # Replace with your desired AMI
  instance_type = "t2.micro"
  key_name      = aws_key_pair.web-host.key_name

  tags = {
    Name = "GitHubActionsEC2-test1"
  }
}
resource "aws_key_pair" "web-host" {
  key_name   = "web-host"
  public_key = file("C:/Users/Acer/.ssh/id_ed25519.pub")
}

