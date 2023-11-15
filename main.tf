terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "webapp" {
  ami           = "AMI ID"
  instance_type = "t2.nano"

  tags = {
    Name = "Webapp"
  }
}