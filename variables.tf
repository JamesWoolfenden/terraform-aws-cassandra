
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


variable "template-file" {
  type    = string
  default = "cassandra.tmpl"
}

variable "config-file" {
  type    = string
  default = "/etc/dse/cassandra/cassandra.yaml"
}

variable "ami" {
  type        = string
  description = "Contains information to select desired AMI"
  validation {
    condition     = length(var.ami_id) > 21 && substr(var.ami_id, 0, 4) == "ami-"
    error_message = "The AMI ids need to start with ami- and is 21 characters."
  }
}

variable "vpc_id" {
  description = "The id for the vpc"
  type        = string
  validation {
    condition     = length(var.vpc_id) > 12 && substr(var.vpc_id, 0, 4) == "vpc-"
    error_message = "The AMI ids need to start with ami- and is at least 12 characters."
  }
}

variable "private_ips" {
  type        = list
  description = "List of ips for the cassandra nodes"
}
