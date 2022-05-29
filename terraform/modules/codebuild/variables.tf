variable "prefix" {
  type        = string
  description = "The base name for the resource"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the main VPC"
}

variable "subnet-1-arn" {
  type        = string
  description = "The ARN for Subnet 1"
}

variable "subnet-2-arn" {
  type        = string
  description = "The ARN for Subnet 2"
}