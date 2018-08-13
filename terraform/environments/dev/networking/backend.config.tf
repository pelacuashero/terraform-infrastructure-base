terraform {
  backend s3 {
    bucket = "infrastructure-company-terraform"
    key    = "dev/networking/terraform.tfstate"
    region = "us-west-1"
  }
}