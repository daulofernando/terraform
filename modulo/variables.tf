variable "name" {
  type        = string
  description = ""
  default     = "baldedaulinho"

}

variable "policy" {
  type        = string
  description = ""
  default     = null
}

variable "acl" {
  type        = string
  description = ""
  default     = "private"

}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "balde"
    Project = "lab terraform"
  }

}