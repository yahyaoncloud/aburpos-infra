terraform {
  backend "s3" {
    bucket         = "aburpos-445236799458-ap-south-2-an"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-2"
    dynamodb_table = "aburpos-terraform-locks"
    encrypt        = true
  }
}