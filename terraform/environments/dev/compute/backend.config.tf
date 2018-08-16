terraform {
  backend s3 {
    bucket = "infrastructure-company-terraform"
    key    = "dev/compute/terraform.tfstate"
    region = "us-west-1"
  }
}