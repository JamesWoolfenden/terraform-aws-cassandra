variable "region" {
  default = "eu-west-1"
  type    = string
}

variable "secondary_region" {
  default = "us-east-1"
  type    = string
}

variable "instance_type" {}

variable "common_tags" {
  type = map
}
