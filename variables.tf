variable "access_key" {
  description  ="AWS access key"
}
variable "secret_key" {
  description  ="AWS secret"
}
variable "region" {
    default = "eu-west-1"
}

variable "secondary_region" {
  default = "us-east-1"
}

variable "instance_type" {
   default="m3.large"
}
