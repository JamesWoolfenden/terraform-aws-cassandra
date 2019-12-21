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

variable "local_nodes" {
  description = "Number of Cassandra instances in main region"
  default     = 3
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
  type = list
}
