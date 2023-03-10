provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "s3-backend-for-terraform-state-file"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}