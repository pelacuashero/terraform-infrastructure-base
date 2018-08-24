terraform {
  backend s3 {
    bucket = "infrastructure-company-terraform"
    key    = "dev/security/terraform.tfstate"
    region = "us-west-1"
  }
}