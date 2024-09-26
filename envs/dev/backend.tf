# project-root/backend-config.tf

# data "terraform_remote_state" "backend" {
#   backend = "local"
#   config = {
#     path = "${path.module}/backend/terraform.tfstate"
#   }
# }

# locals {
#   backend_config = {
#     bucket         = data.terraform_remote_state.backend.outputs.state_bucket_name
#     key            = "dev/terraform.tfstate"
#     region         = data.terraform_remote_state.backend.outputs.state_bucket_region
#     dynamodb_table = data.terraform_remote_state.backend.outputs.dynamodb_table_name
#     encrypt        = true
#   }
# }

# resource "null_resource" "backend_config" {
#   triggers = {
#     config = jsonencode(local.backend_config)
#   }
# }


terraform {
  backend "s3" {
    bucket         = "sips-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sips-terraform-state-lock-table"
    encrypt        = true
  }
}