variable "access_key" {
  description = "AWS access key"
}
variable "secret_key" {
  description = "AWS secret"
}
variable "region" {
  default = "eu-west-1"
}

variable "secondary_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "m3.large"
}

variable "aws_amis" {
  description = "These are ubuntu 14.04 ami"
  default = {
    us-east-1      = "ami-d05e75b8"
    us-west-1      = "ami-df6a8b9b"
    us-west-2      = "ami-5189a661"
    eu-west-1      = "ami-47a23a30"
    eu-central-1   = "ami-accff2b1"
    ap-southeast-1 = "ami-96f1c1c4"
    ap-northeast-1 = "ami-936d9d93"
    ap-southeast-2 = "ami-69631053"
    sa-east-1      = "ami-4d883350"
  }
}
