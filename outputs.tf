output "s3_bucket_name" {
  value       = module.s3.s3_bucket_domain_name
  sensitive   = false
  description = "Nome do bucket S3"
}

output "cloudfront_domain_name" {
  value       = module.cloudfront.cloudfront_domain_name
  sensitive   = false
  description = "Nome de dominio do cloudfront"
}
