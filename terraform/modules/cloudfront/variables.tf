variable "s3_bucket_website_endpoint" {
  type        = string
  description = "The website endpoint of the S3 bucket"
}

variable "s3_bucket_arn" {
  type        = string
  description = "The ARN of the S3 bucket"
}

variable "environment" {
  type        = string
  description = "The environment (e.g., dev, staging, prod)"
}

variable "price_class" {
  type        = string
  description = "The price class for the CloudFront distribution"
  default     = "PriceClass_100"
}

variable "acm_certificate_arn" {
  description = "The ARN of the ACM certificate to use for HTTPS"
  type        = string
  default     = null
}

variable "use_https" {
  description = "Whether to use HTTPS"
  type        = bool
  default     = false
}