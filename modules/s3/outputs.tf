output "s3_bucket_domain_name" {
  value       = data.aws_s3_bucket.bucket.bucket_domain_name
  sensitive   = false
  description = "Nome do dominio do bucket S3"
}

output "s3_bucket_id" {
  value       = data.aws_s3_bucket.bucket.id
  sensitive   = false
  description = "Nome do dominio do bucket S3"
}