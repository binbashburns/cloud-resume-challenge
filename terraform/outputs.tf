output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = module.s3-web.website_bucket_name
}

output "bucket_endpoint" {
  description = "Bucket endpoint"
  value       = module.s3-web.bucket_endpoint
}

output "cloudfront_endpoint" {
  description = "Cloudfront endpoint"
  value       = module.s3-web.cloudfront_endpoint
}

output "domain_name" {
  description = "Website endpoint"
  value       = module.s3-web.domain_name
}