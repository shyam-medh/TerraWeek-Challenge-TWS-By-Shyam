variable "aws_region" {
    description = "The AWS region to deploy the resources in"
    type = string
    default = "ap-south-1"
}

variable "bucket_name" {
    description = "The name of the S3 bucket"
    type = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t3.micro"
}
