variable "prefix" {
  type        = string
  default     = "resume-challenge"
  description = "The prefix for all resources"
}

variable "aws_region" {
  type        = string
  description = "The AWS region to put the bucket into"
  default     = "us-east-1"
}

variable "site_domain" {}