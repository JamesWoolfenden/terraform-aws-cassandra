provider "aws" {
  region  = "us-west-2"
  version = "2.68.0"
}

provider "tls" {
  version = "2.0"
}

provider "http" {
  version = "1.1"
}
