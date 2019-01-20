variable "region" {
  default     = "eu-west-1"
  description = ""
}

variable "secondary_region" {
  description = ""
  default     = "us-east-1"
}

variable "instance_type" {
  description = ""
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
