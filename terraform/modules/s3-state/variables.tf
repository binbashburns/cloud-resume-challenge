variable "prefix" {
  type        = string
  description = "The base name for the S3 bucket"
}

variable "kms_key_arn" {
  description = "The KMS Key ARN"
}