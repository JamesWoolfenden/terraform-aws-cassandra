variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "eu-west-1"
}

variable "secondary_region" {
  default = "us-east-1"
}

variable "instance_type"
{
   default="m3.large"
}
