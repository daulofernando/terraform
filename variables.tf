variable "environment" {
  type        = string
  description = "dev"
}

variable "aws_region" {
  type        = string
  description = "regiao da aws"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0be6f09264f372d7a"
}

variable "instance_type" {
  type        = string
  description = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "projeto x"
    Project = "lab terraform"
  }

}

