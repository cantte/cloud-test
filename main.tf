terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cloud-test" {
  ami                   = "ami-09d3b3274b6c5d4aa"
  instance_type         = "t2.micro"

  tags = {
    "Env" = "dev"
    "Name" = "dev-cloud"
  }
}   