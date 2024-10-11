variable "domain_name" {
  description = "The domain name for the ACM certificate"
  type        = string
}

variable "zone_id" {
  description = "The Route53 zone ID to add the ACM validation records to"
  type        = string
  default     = ""
}