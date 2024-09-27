# Terraform-Static-Website-AWS-S3-
Deploy a Static Website on AWS S3 with Terraform

## Overview
This Terraform project provides a comprehensive solution for deploying a static website on AWS, leveraging services like S3, CloudFront, IAM, Route 53, and ACM. It offers a modular approach for easy customization and maintenance.

## Architecture

The project sets up the following AWS resources:

1. **S3 Bucket**: Hosts the static website files
2. **CloudFront Distribution**: Serves the website content globally with low latency
3. **Route53** (optional): Manages DNS
4. **ACM** (optional): Provides SSL/TLS certificate for 

## Prerequisites
  - AWS Account: An AWS account with necessary permissions.

  - Terraform: Terraform installed and configured with AWS credentials.

  - Git: Git installed for version control.

## Project Structure

```
project-root/
├── backend/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── envs/
│ └── dev/
│ ├── main.tf
│ ├── variables.tf
│ └── terraform.tfvars
├── modules/
│ └── website_files/
│ │  ├── index.html
│ │  ├── Other Files
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── backend.tf
├── provider.tf
├── variables.tf
└── README.md

```

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

## Setup and Deployment

1. **Backend Infrastructure**
   Navigate to the `backend/` directory and run:

```
terraform validate
```
```
terraform init
```
```
terraform apply
```

This sets up the S3 bucket and DynamoDB table for Terraform state management.

2. **Main Project**
From the project root:

terraform validate
terraform init
terraform apply

3. **Website Deployment**
Place your website files in the `website_files/` directory, then run:


terraform apply in the `envs/dev/` directory.

## Modules

### S3 Static Website

This module creates an S3 bucket configured for static website hosting and fronted using Amazon Cloudfront.

**Inputs:**
- `bucket_name`: Name of the S3 bucket (must be globally unique)

**Outputs:**
- `website_endpoint`: The website endpoint for the S3 bucket
- `bucket_name`: The name of the created S3 bucket

## Environments

### Dev

The `envs/dev/` directory contains the configuration for the development environment. Customize `terraform.tfvars` for environment-specific variables.

## State Management

This project uses an S3 backend with DynamoDB for state locking, ensuring safe concurrent operations and state versioning.

## Security Considerations

- S3 bucket is configured with appropriate public access settings
- CloudFront is set up to use HTTPS only
- IAM policies follow the principle of least privilege

## Customization

- Modify `variables.tf` files to add or change input variables
- Adjust CloudFront settings in `envs/dev/main.tf` for caching behavior
- Add additional resources as needed in the respective `main.tf` files

## Usage

Access your static website using the domain name specified in the domain_name variable.

## Troubleshooting

**Common Issues:**

  - Incorrect AWS credentials or region configuration.
  - Missing or incorrect variable values.
  - Insufficient permissions for AWS resources.
  - DNS propagation delays.
  - Debugging: Use Terraform's plan and apply output to identify and resolve issues.

## Deployment Results

### S3 Bucket

After successful deployment, you should see your S3 bucket in the AWS console:

![S3 Bucket](images/s3_bucket.png)

### CloudFront Distribution

The CloudFront distribution for your website:

![CloudFront Distribution](images/cloudfront_distribution.png)d

## Website Endpoint

After deploying your website content to the S3 bucket, you should be able to access it via the CloudFront URL or your custom domain. Here's how it looks:

![Website Endpoint](images/website_endpoint.png)
## License
[ MIT License 2.0]

Note: Replace placeholders like your-state-bucket, your-domain-name, and your-route53-zone-id with your actual values.
