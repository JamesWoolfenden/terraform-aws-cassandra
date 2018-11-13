provider "aws" {
  version    = "~> 1.43"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

provider "aws" {
  version    = "~> 1.43"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.secondary_region}"
  alias      = "useast"
}