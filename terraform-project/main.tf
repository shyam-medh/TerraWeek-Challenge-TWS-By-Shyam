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

module "my_ec2" {
  source        = "./modules/ec2_instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
