provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "terraweek_bucket" {
  bucket = "terraweek-challenge-bucket-shyam-medh"
}