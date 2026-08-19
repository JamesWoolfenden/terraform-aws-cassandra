variable "region" {
  default     = "eu-west-1"
  type        = string
  description = "AWS region to deploy into"
  validation {
    condition     = can(regex("^[a-z]{2}-[a-z]+-[0-9]$", var.region))
    error_message = "region must look like a valid AWS region, e.g. eu-west-1."
  }
}

variable "instance_type" {
  type        = string
  description = "AWS instance type"
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]*\\.[a-z0-9]+$", var.instance_type))
    error_message = "instance_type must look like a valid AWS instance type, e.g. t3.micro."
  }
}

variable "ami" {
  type = object({
    filter = list(string)
    owners = list(string)
  })
  description = "Contains information to select desired AMI"
  default = {
    filter = ["amzn2-ami-hvm-*-x86_64-ebs"]
    owners = ["amazon"]
  }
  validation {
    condition     = length(var.ami.filter) > 0 && length(var.ami.owners) > 0
    error_message = "ami.filter and ami.owners must each contain at least one entry."
  }
}
