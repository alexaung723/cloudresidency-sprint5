terraform {
  backend "s3" {
    # region = "${region}"

    # profile = "${profile}"

    # bucket = "sprint5-cr-aet-remote-state"
    # key    = "terraform.tfstate"
  }
}

data "terraform_remote_state" "state" {
  backend = "s3"
  config {
    region = "${var.region}"
    profile = "${var.profile}"
    bucket = "sprint5-cr-aet-remote-state"
    key    = "terraform.tfstate"
  }
}