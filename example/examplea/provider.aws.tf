provider "aws" {
  version = "2.54"
  region  = "eu-west-1"

}

provider "tls" {
  version = "2.0"
}

provider "http" {
  version = "1.1"
}
