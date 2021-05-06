terraform {
  required_version = "0.15.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  # as credenciais podem ser inseridas manualmente ou via cli aws
  access_key = "AKIAQIR2NS6S7GKENXF2"
  secret_key = "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"
  region     = "us-east-1"
  profile    = "tf014"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "tf-test-donizete"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
    Cliente     = "Debroski"
  }
}
