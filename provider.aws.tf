provider "aws" {
  region  = var.region
  version = "2.12.0"
}

provider "aws" {
  region  = var.secondary_region
  alias   = "useast"
  version = "2.12.0"
}

provider "tls" {
  version = "2.0.1"
}
