# Imports random string resource
resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

# Creates S3 bucket for Terraform State
resource "aws_s3_bucket" "terraform-state" {
  bucket        = join("-", ["${var.prefix}-tf-state-", random_string.random.result])
  force_destroy = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform-state" {
  bucket = aws_s3_bucket.terraform-state.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.kms_key_arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_acl" "terraform-state" {
  bucket = aws_s3_bucket.terraform-state.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "terraform-state" {
  bucket = aws_s3_bucket.terraform-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "terraform-state" {
  bucket = aws_s3_bucket.terraform-state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}