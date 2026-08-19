provider "aws" {
  region = var.region

  default_tags {
    tags = {
      ManagedBy = "Terraform"
      Example   = "exampleb"
    }
  }
}

provider "tls" {
}

provider "http" {
}
