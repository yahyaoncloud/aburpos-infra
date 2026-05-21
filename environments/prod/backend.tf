terraform {
  backend "s3" {
    bucket         = "aburpos-terraform-state-prod"
    key            = "prod/terraform.tfstate"
    region         = "me-south-1"
    dynamodb_table = "aburpos-terraform-locks"
    encrypt        = true
  }
}