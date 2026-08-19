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

variable "private_ips" {
  type        = list(any)
  description = "List of ips for the cassandra nodes"
  validation {
    condition     = alltrue([for ip in var.private_ips : can(cidrhost("${ip}/32", 0))])
    error_message = "private_ips must be a list of valid IPv4 addresses."
  }
}
