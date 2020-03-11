provider "aws" {
  version             = "~> 2.43"
  region              = var.aws_region
  allowed_account_ids = var.account_ids
}

terraform {
  required_version = ">= 0.12"
}
