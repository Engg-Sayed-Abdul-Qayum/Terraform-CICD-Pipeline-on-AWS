
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "terraform-cicd-pipeline-on-aws "
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}