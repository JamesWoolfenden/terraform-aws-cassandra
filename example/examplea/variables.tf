variable "region" {
  default = "eu-west-1"
  type    = string
}

variable "instance_type" {
  type       = map 
  description="AWS instance type"
}

variable "common_tags" {
  type = map
}
