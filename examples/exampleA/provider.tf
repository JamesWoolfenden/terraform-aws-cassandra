provider "aws" {
  version = "1.54"
  region  = "${var.region}"
}

provider "aws" {
  version = "1.54"
  region  = "${var.secondary_region}"
  alias   = "useast"
}

provider "tls" {
  version = "1.2"
}
