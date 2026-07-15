terraform {
  backend "s3" {
    bucket         = "terraweek-state-shyam"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "terraweek_bucket" {
  bucket = var.bucket_name
}

resource "aws_instance" "terraweek_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  # Explicit Dependency
  depends_on = [
    aws_s3_bucket.terraweek_bucket
  ]

  # Lifecycle rule
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "TerraWeek-Day3-Server"
  }
}
