variable "prefix" {
  type        = string
  default     = "resume-challenge"
  description = "The prefix for all resources"
}

variable "domain_name" {
  type        = string
  default     = "binbashburns.com"
  description = "The domain name for the website"
}

variable "bucket_name" {
  type        = string
  default     = "binbashburns.com"
  description = "The bucket name for the website"
}

variable "common_tags" {
  description = "Common tags you want applied to all components."
  default = {
    Project = "binbashburns.com"
  }
}