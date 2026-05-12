terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "cloudboosta_bucket" {
  bucket = "cloudboosta-jenkins-terraform-bucket-osahon"

  tags = {
    Name        = "CloudBoosta Jenkins Bucket"
    Environment = "Dev"
  }
}
