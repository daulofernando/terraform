terraform {
  required_version = "1.0.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>2.2"
    }
  }
}




provider "aws" {
  version = "~> 2.2"
  region = "us-east-1"
}

resource "aws_instance" "maquina" {
    count = 2
    ami = "ami-0747bdcabd34c712a"
    instance_type = "t2.micro"
    key_name = "terraform"
    tags = {
        Name = "dev ${count.index}"
    }
}