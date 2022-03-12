variable "prefix" {
  type        = string
  description = "Resource prefix"
}

variable "limit" {
  type        = string
  description = "This is the limit (in USD) of your budget"
}

variable "time_unit" {
  type        = string
  description = "This is the period of time your budget is set for"
}

variable "begin" {
  type        = string
  description = "This is the start date for your budget"
}