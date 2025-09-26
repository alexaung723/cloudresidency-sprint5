
provider "aws" {
  profile    = var.profile_name
  region     = var.region
}

resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = "true"
}