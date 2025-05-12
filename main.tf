terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b7de67988bf1a282" # Replace with your desired AMI
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActionsEC2"
  }
}
