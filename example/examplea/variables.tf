variable "region" {
  default = "eu-west-1"
  type    = string
}

variable "instance_type" {
  type        = string
  description = "AWS instance type"
}

variable "common_tags" {
  type = map
}
