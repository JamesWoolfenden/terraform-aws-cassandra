variable "instance_type" {
  description = "aws instance type and class"
  type        = string
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]*\\.[a-z0-9]+$", var.instance_type))
    error_message = "instance_type must look like a valid AWS instance type, e.g. t3.micro."
  }
}

variable "allowed_ranges" {
  description = "Allowed ranges that can access the cluster"
  type        = list(any)
  default     = []
  validation {
    condition     = alltrue([for r in var.allowed_ranges : can(cidrhost(r, 0))])
    error_message = "allowed_ranges must be a list of valid CIDR blocks."
  }
  validation {
    condition     = !contains(var.allowed_ranges, "0.0.0.0/0")
    error_message = "allowed_ranges must not include 0.0.0.0/0; restrict cluster access to known CIDRs."
  }
}

variable "ssh_inbound_range" {
  description = "CIDRs of address that are allowed to ssh in."
  type        = list(any)
  validation {
    condition     = alltrue([for r in var.ssh_inbound_range : can(cidrhost(r, 0))])
    error_message = "ssh_inbound_range must be a list of valid CIDR blocks."
  }
  validation {
    condition     = !contains(var.ssh_inbound_range, "0.0.0.0/0")
    error_message = "ssh_inbound_range must not include 0.0.0.0/0; restrict SSH to known CIDRs or a bastion host."
  }
}

variable "subnet_ids" {
  description = "List of subnet Ids"
  type        = list(any)
  validation {
    condition     = alltrue([for s in var.subnet_ids : can(regex("^subnet-[0-9a-f]+$", s))])
    error_message = "subnet_ids must be a list of valid AWS subnet IDs (subnet-xxxxxxxx)."
  }
}

variable "ami" {
  description = "Contains information to select desired AWS AMI: filter (name pattern list) and owners (account ID list)"
  type = object({
    filter = list(string)
    owners = list(string)
  })
  validation {
    condition     = length(var.ami.filter) > 0 && length(var.ami.owners) > 0
    error_message = "ami.filter and ami.owners must each contain at least one entry."
  }
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
  validation {
    condition     = alltrue([for ip in var.private_ips : can(cidrhost("${ip}/32", 0))])
    error_message = "private_ips must be a list of valid IPv4 addresses."
  }
}

variable "iam_instance_profile" {
  type        = string
  default     = ""
  description = "Name of an IAM instance profile to attach to each Cassandra node; leave empty for none"
  validation {
    condition     = var.iam_instance_profile == "" || can(regex("^[\\w+=,.@-]+$", var.iam_instance_profile))
    error_message = "iam_instance_profile must be empty or a valid IAM instance profile name."
  }
}

variable "disable_api_termination" {
  description = "Whether to enable EC2 termination protection on each Cassandra node"
  type        = bool
  default     = true
}

variable "volume_size" {
  description = "Size in GB of the root EBS volume for each Cassandra node"
  type        = number
  default     = 100
  validation {
    condition     = var.volume_size > 0
    error_message = "volume_size must be greater than 0."
  }
}
