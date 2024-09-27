# Terraform-Static-Website-AWS-S3-
Deploy a Static Website on AWS S3 with Terraform

## Overview
This Terraform project provides a comprehensive solution for deploying a static website on AWS, leveraging services like S3, CloudFront, IAM, Route 53, and ACM. It offers a modular approach for easy customization and maintenance.

## Prerequisites
  **- AWS Account:** An AWS account with necessary permissions.

  **- Terraform:** Terraform installed and configured with AWS credentials.

  **- Git:** Git installed for version control.

## Installation
**1. Clone the Repository:**

```
git clone https://github.com/your-username/your-repository.git

```
**2. Navigate to the Project Directory:**
```
cd   
 your-repository
```

## Configuration
**Variables:**

  **- aws_region:** The AWS region for deployment (default: us-west-2).

  **- s3_bucket_name:** The name of the S3 bucket for static website content.

  **- domain_name:** The domain name to be associated with the website.

  **- zone_id:** The ID of your Route 53 hosted zone.

  **- subject_alternative_names:** A list of additional domain names (optional).

  **- tags:** A map of tags to apply to resources (optional).

**Backend:**

Configure the Terraform backend in terraform.tfvars to specify the S3 bucket and DynamoDB table for state storage and locking:

```
terraform {
  backend "s3" {
    bucket = "your-state-bucket"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
```
## Deployment
**1. Initialize Terraform:**

```
terraform init

```
**2. Plan Changes:**

```
terraform plan
```

**3. Apply Changes:**

```
terraform apply
```
## Usage

Access your static website using the domain name specified in the domain_name variable.

## Customization

- Modules: Modify the variables in the individual modules (e.g., s3, cloudfront, iam, route53, acm) to customize their behavior.
- Tags: Apply tags to resources for better organization and management.
- Additional Features: Explore the documentation of each module for advanced features and configurations.

## Troubleshooting

**Common Issues:**

  - Incorrect AWS credentials or region configuration.
  - Missing or incorrect variable values.
  - Insufficient permissions for AWS resources.
  - DNS propagation delays.
  - Debugging: Use Terraform's plan and apply output to identify and resolve issues.

## Contributing

  **- Fork the Repository:** Fork the repository to your GitHub account.
  
  **- Create a Branch:** Create a new branch for your changes.
  
  **- Make Changes:** Implement your modifications.
  
  **- Submit a Pull Request:** Submit a pull request to the main repository.

## License
[ MIT License 2.0]

Note: Replace placeholders like your-state-bucket, your-domain-name, and your-route53-zone-id with your actual values.
