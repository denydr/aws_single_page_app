variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  default     = "dev"
}

variable "cloudfront_price_class" {
  description = "The price class for CloudFront distribution"
  default     = "PriceClass_100"
}

variable "ec2_instance_type" {
  description = "The instance type to use for the EC2 instances"
  default     = "t2.micro"
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "availability_zones_count" {
  description = "The number of AZs to use in the region"
  type        = number
  default     = 2
}