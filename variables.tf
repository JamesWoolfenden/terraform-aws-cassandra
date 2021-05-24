
variable "instance_type" {
  description = "aws instance type and class"
  type        = string
}


variable "allowed_ranges" {
  description = "Allowed ranges that can access the cluster"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "ssh-inbound-range" {
  description = "CIDRs of address that are allowed to ssh in."
  type        = list(any)
}

variable "subnet_ids" {
  description = "List of subnet Ids"
  type        = list(any)
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
  description = "Contains information to select desired AWS AMI"
}

variable "vpc_id" {
  description = "The id for the vpc"
  type        = string
  validation {
    condition     = length(var.vpc_id) >= 12 && substr(var.vpc_id, 0, 4) == "vpc-"
    error_message = "The VPC ids need to start with vpc- and is at least 12 characters."
  }
}

variable "private_ips" {
  type        = list(any)
  description = "List of ips for the cassandra nodes"
}
