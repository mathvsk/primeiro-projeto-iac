variable "s3_bucket_name" {
  type    = string
  default = "Nome do bucket"
}

variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "Tags s3"
}