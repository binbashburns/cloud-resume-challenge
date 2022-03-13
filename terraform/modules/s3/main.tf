# Imports random string resource
resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

# Creates S3 bucket for Terraform State
resource "aws_s3_bucket" "terraform-state" {
  bucket        = join("-", ["${var.prefix}-tf-state-", random_string.random.result])
  // acl           = "private"
  force_destroy = true

  // versioning {
  //   enabled = true
  // }

  // server_side_encryption_configuration {
  //   rule {
  //     apply_server_side_encryption_by_default {
  //       kms_master_key_id = var.kms_key_arn
  //       sse_algorithm     = "aws:kms"
  //     }
  //   }
  // }
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.terraform-state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Creates S3 bucket for Static Web Content
resource "aws_s3_bucket" "web-bucket" {
  bucket        = join("-", ["${var.prefix}-s3-web-", random_string.random.result])
  // acl           = "private"
  force_destroy = true


  // versioning {
  //   enabled = true
  // }

  // server_side_encryption_configuration {
  //   rule {
  //     apply_server_side_encryption_by_default {
  //       kms_master_key_id = var.kms_key_arn
  //       sse_algorithm     = "aws:kms"
  //     }
  //   }
  // }
}