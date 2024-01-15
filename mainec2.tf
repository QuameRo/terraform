terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }
}

provider "aws" {
    region = "eu-west-1" 
}


resource "aws_instance" "web" {
  ami           = "ami-0905a3c97561e0b69"
  instance_type = "t3.micro"

  tags = {
    Name = "quame"
  }
}