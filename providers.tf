provider "aws" {
  version = "~> 1.43"
  region  = "${var.region}"
}

provider "aws" {
  version = "~> 1.43"
  region  = "${var.secondary_region}"
  alias   = "useast"
}

provider "tls" {
  version = "1.2"
}
