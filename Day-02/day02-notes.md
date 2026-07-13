# TerraWeek Challenge - Day 2: Terraform Configuration Language (HCL)

> **TrainWithShubham #TerraWeekChallenge**
>
> **Date:** 13 July 2026

---

# Challenge for the #TerraWeek: Monday

- Explore the HCL (HashiCorp Configuration Language) syntax used in Terraform.
- Learn about variables, data types, and expressions in HCL.
- Practice writing Terraform configurations using HCL syntax.

---

# Table of Contents

- Challenge for the #TerraWeek: Monday
- What is HCL?
- HCL Syntax Basics
- Variables in Terraform
- Data Types
- Expressions and Functions
- Practice: Writing Configurations
- References

---

# What is HCL?

HashiCorp Configuration Language (HCL) is a unique configuration language designed by HashiCorp. It is used to build structured configuration formats that are both human-readable and machine-friendly, making it ideal for defining infrastructure.

# HCL Syntax Basics

Terraform configurations are written in `.tf` files using HCL. The basic syntax involves blocks, arguments, and expressions.

```hcl
<BLOCK_TYPE> "<BLOCK_LABEL>" "<BLOCK_NAME>" {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}
```

# Variables in Terraform

Variables allow you to customize your Terraform modules without altering the source code. You can define variables in a `variables.tf` file and pass values through `terraform.tfvars`.

```hcl
variable "instance_type" {
  description = "The type of EC2 instance to run."
  type        = string
  default     = "t2.micro"
}
```

# Data Types

Terraform supports several data types for variables:

- **String:** A sequence of Unicode characters (e.g., `"ami-12345"`).
- **Number:** A numeric value (e.g., `10`).
- **Bool:** A boolean value (`true` or `false`).
- **List/Tuple:** A sequence of values (e.g., `["us-east-1a", "us-east-1b"]`).
- **Map/Object:** A group of values represented by named keys (e.g., `{ environment = "dev", project = "terraweek" }`).

# Expressions and Functions

Expressions are used to refer to or compute values within a configuration. Terraform also provides built-in functions to transform and combine values (e.g., `join()`, `max()`, `lower()`).

# Practice: Writing Configurations

To practice HCL syntax and variables, I refactored my hardcoded Day 1 script to use `variables.tf` and `terraform.tfvars`.

**`variables.tf`**

```hcl
variable "aws_region" {
    description = "The AWS region to deploy the resources in"
    type = string
    default = "ap-south-1"
}

variable "bucket_name" {
    description = "The name of the S3 bucket"
    type = string
}
```

**`terraform.tfvars`**

```hcl
aws_region = "ap-south-1"
bucket_name = "terraweek-challenge-bucket-shyam-medh-day2"
```

**`main.tf`**

```hcl
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "terraweek_bucket" {
  bucket = var.bucket_name
}
```

### Execution Results:

1. terraform plan
   ![1783964009562](images/1783964009562.png)
2. terraform apply
   ![1783964304880](images/1783964304880.png)
3. terraform destroy
   ![1783964348779](images/1783964348779.png)

# Project Structure

At the end of Day 2, my project structure looks like this:

```text
terraform-project/
├── main.tf
├── terraform.tfvars
└── variables.tf
```

# References

- [Terraform Language Documentation](https://developer.hashicorp.com/terraform/language)
