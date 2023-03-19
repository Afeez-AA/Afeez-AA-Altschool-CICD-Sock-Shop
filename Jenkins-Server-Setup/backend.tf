terraform {
  backend "s3" {
    bucket = "kops-state-afz"
    region = "us-east-1"
    key = "az/terraform.tfstate"
  }
}