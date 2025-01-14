output "cloudfront_id" {
  value       = data.aws_cloudfront_distribution.cloudfront.id
  sensitive   = false
  description = "Id do CloudFront"
}

output "cloudfront_domain_name" {
  value       = data.aws_cloudfront_distribution.cloudfront.domain_name
  sensitive   = false
  description = "Nome do dominio do cloudfront"
}