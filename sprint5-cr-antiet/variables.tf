# variable "profile" {}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

variable "region" {
  default     = "us-east-2"
  description = "AWS region"
}

variable "default_tags" {
  default = {
    Name        = "sprint5-cr-AntiET"
    Pod         = "AntiET"
    Sprint      = "sprint5"
    Environment = "dev"
  }
  type = map(string)
}