provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      createdby = "terraform"
      module    = "terraform-aws-vpc"
      owner     = "James Woolfenden"
    }
  }
}

provider "tls" {
}

provider "http" {
}
