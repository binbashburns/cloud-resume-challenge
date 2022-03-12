variable "prefix" {
  type        = string
  description = "The base name for the S3 bucket"
}

variable "kms_key_arn" {
  description = "The KMS Key ARN"
}

variable "domain_name" {
  type = string
  description = "The domain name for the website."
}

variable "common_tags" {
  description = "Common tags you want applied to all components."
}