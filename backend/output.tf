output "state_bucket_name" {
  value = aws_s3_bucket.terraform_state.id
}

output "state_bucket_region" {
  value = aws_s3_bucket.terraform_state.region
}
