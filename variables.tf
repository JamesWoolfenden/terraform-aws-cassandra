variable "region" {
  default     = "eu-west-1"
  description = "aws region"
  type        = string
}

variable "instance_type" {
  description = "aws instance type and class"
  type        = string
}

variable "common_tags" {
  description = "Implements the common tags scheme"
  type        = map(string)
}

variable "allowed_ranges" {
  description = "Allowed ranges that can access the cluster"
  type        = list
  default     = ["0.0.0.0/0"]
}

variable "ssh-inbound-range" {
  description = "CIDRs of address that are allowed to ssh in."
  type        = list
  default     = ["0.0.0.0/0"]
}

variable "subnet_ids" {
  description = "List of subnet Ids"
  type        = list
}


variable "scaling_group" {
  type    = string
  default = "cassandra"
}

variable "prefix" {
  type    = string
  default = "cass-"
}


variable "min_size" {
  description = "Minimum number of instances"
  type        = number
  default     = 3
}

variable "max_size" {
  description = "Maximum number of instances"
  type        = number
  default     = 3
}

variable "ami" {
  type        = map
  description = "Contains information to select desired AMI"
  default = {
    filter = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server*"]
    owners = ["099720109477"]
  }
}

variable "vpc_id" {
  type        = string
  description = "The id of the vpc for the security group"
}
