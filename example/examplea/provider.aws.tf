provider "aws" {
  region  = "eu-west-1"
  version = "2.64"
}

provider "tls" {
  version = "2.0"
}

provider "http" {
  version = "1.1"
}
