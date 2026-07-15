# TerraWeek Challenge

This is my repository for the **TrainWithShubham #TerraWeek Challenge**. Over 7 days, I am learning Infrastructure as Code (IaC) and using Terraform to automate cloud infrastructure.

This repository tracks my daily progress and contains all the code and notes I write during the challenge.

## Project Structure

Here is how the repository is laid out:

```text
TerraWeek/
├── Day-01/
│   ├── images/
│   └── day01-notes.md
├── Day-02/
│   ├── images/
│   └── day02-notes.md
├── Day-03/
│   ├── images/
│   └── day03-notes.md
├── Day-04/
│   ├── images/
│   └── day04-notes.md
├── terraform-project/
│   ├── main.tf
│   ├── variables.tf
│   └── terraform.tfvars
├── README.md
└── terraweek.pdf
```

---

## Progress Tracker

### [Day 1: Introduction to Terraform](Day-01/day01-notes.md)
- **Status:** Completed
- **Summary:** Learned the basics of IaC, installed Terraform, and wrote a simple script to create an AWS S3 bucket.

### [Day 2: Terraform Configuration Language (HCL)](Day-02/day02-notes.md)
- **Status:** Completed
- **Summary:** Learned how to write HCL syntax, moved hardcoded values into variables using `variables.tf` and `terraform.tfvars`, and tested the code using `terraform plan`.

### [Day 3: Managing Resources](Day-03/day03-notes.md)
- **Status:** Completed
- **Summary:** Exploring Terraform resource types, dependencies (`depends_on`), and lifecycle management by creating AWS EC2 instances.

### [Day 4: Terraform State Management](Day-04/day04-notes.md)
- **Status:** Completed
- **Summary:** Learning about local vs. remote state, and configuring an AWS S3 backend with DynamoDB state locking.

### Day 5: Terraform Modules
- **Status:** Pending

---

## Tools Used
- **Cloud Provider:** Amazon Web Services (AWS)
- **IaC Tool:** Terraform

---
*This repository is for the TerraWeek challenge. You can find the challenge rules in the included [terraweek.pdf](terraweek.pdf).*
