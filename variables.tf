
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


variable "template-file" {
  default = "cassandra.tmpl"
}

variable "config-file" {
  default = "/etc/dse/cassandra/cassandra.yaml"
}

variable "ami" {
  type        = map
  description = "Contains information to select desired AMI"
}


variable "vpc_id" {
  type = string
}

variable "private_ips" {
  type        = list
  description = "List of ips for the cassandra nodes"
}
