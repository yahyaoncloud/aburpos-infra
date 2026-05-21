


provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "ABURPOS"
      ManagedBy   = "Terraform"
      Environment = var.environment
    }
  }
}