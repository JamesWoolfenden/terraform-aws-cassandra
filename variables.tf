variable "region" {
  default     = "eu-west-1"
  description = "aws region"
  type        = "string"
}

variable "secondary_region" {
  description = "Second AWS region"
  default     = "us-east-1"
  type        = "string"
}

variable "instance_type" {
  description = "aws instance type and class"
  type        = "string"
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
