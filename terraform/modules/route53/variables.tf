variable "domain_name" {
  description = "The domain name for the website"
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
}

variable "create_route53_zone" {
  description = "Whether to create a new Route53 zone"
  type        = bool
}

variable "existing_zone_id" {
  description = "The ID of an existing Route53 zone to use (if not creating a new one)"
  type        = string
  default     = ""
}

variable "s3_website_domain" {
  description = "The domain name of the S3 website endpoint"
  type        = string
}

variable "s3_website_zone_id" {
  description = "The hosted zone ID of the S3 website endpoint"
  type        = string
}

variable "cloudfront_domain_name" {
  type        = string
  description = "The domain name of the CloudFront distribution"
}

variable "cloudfront_zone_id" {
  type        = string
  description = "The hosted zone ID of the CloudFront distribution"
}