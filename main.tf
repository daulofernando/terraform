# teste

terraform {
  required_version = "0.15.4"

  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.42.0"
      }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "bucket"{
    bucket = "daulobalde"
    acl = "private"

    tags = {
        Name = "meu balde"
    }
}
