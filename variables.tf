variable "region" {
  default     = "eu-west-1"
  description = "aws region"
  type        = string
}

variable "secondary_region" {
  description = "Second AWS region"
  default     = "us-east-1"
  type        = string
}

variable "instance_type" {
  description = "aws instance type and class"
  type        = string
}

variable "common_tags" {
  description = "Implements the common tags scheme"
  type        = map
}
