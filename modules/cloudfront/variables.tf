variable "origin_id" {
  type        = string
  default     = ""
  description = "Id s3"
}

variable "bucket_domain_name" {
  type        = string
  default     = ""
  description = "Name s3"
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "Price class cdn"
}

variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Tags cdn"
}
