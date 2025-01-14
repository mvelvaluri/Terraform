terraform {
  backend "s3" {
    bucket = "moawstrain"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}