terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }

  backend "s3" {
    bucket  = "rocketseat-matheus-iac-tfstate"
    region  = "us-east-2"
    key     = "terraform.tfstate" # nome do arquivo que será criado no bucket
    encrypt = true

    profile = "AdministratorAccess-412381750742"
  }

}

provider "aws" {
  profile = "AdministratorAccess-412381750742"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name_terraform_state

  lifecycle {
    prevent_destroy = true # previne o bucket de ser destruído
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }
  
  depends_on = [aws_s3_bucket.terraform_state]
}