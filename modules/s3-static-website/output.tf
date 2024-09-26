output "website_endpoint" {
  description = "The website endpoint of the S3 bucket"
  value       = aws_s3_bucket_website_configuration.website_config.website_endpoint
}

output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.website_bucket.id
}

output "s3_website_url" {
  value = aws_s3_bucket.website_bucket.website_endpoint
  description = "URL to access the S3 bucket website"
}