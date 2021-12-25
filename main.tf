terraform {
  required_version = "1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>2.2"
    }
  }
  backend "s3" {
    bucket = "tf-df"
    key    = "state/terraform.tfstate"
    region = "us-east-2"
  }
}
provider "aws" {
  region = "us-east-2"
}
provider "aws" {
  alias  = "west"
  region = "us-west-2"
}