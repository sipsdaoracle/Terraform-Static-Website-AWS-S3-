variable "website_bucket_name" {
  description = "The name of the S3 bucket for the static website"
  type        = string

}

variable "region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}