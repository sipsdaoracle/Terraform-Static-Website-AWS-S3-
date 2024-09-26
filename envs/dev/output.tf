output "s3_bucket_url" {
  description = "The website endpoint of the S3 bucket"
  value       = module.s3_static_website.website_endpoint
}

output "cloudfront_domain_name" {
  description = "The domain name of the CloudFront distribution"
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "cloudfront_distribution_id" {
  description = "The ID of the CloudFront distribution"
  value       = aws_cloudfront_distribution.s3_distribution.id
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket hosting the website"
  value       = module.s3_static_website.bucket_name
}