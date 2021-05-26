variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = "regiao da aws"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform"
}

variable "instance_ami" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "projeto x"
    Project = "lab terraform"
  }

}