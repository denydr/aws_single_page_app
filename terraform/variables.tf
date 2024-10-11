variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "aws-spa"
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "create_route53_zone" {
  description = "Whether to create a new Route53 zone"
  type        = bool
  default     = false
}

variable "existing_zone_id" {
  description = "The ID of an existing Route53 zone to use (if not creating a new one)"
  type        = string
  default     = ""
}

variable "domain_name" {
  description = "The domain name for the website"
  type        = string
  default     = "example-aws-spa.com"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "asg_min_size" {
  description = "Minimum size of the Auto Scaling Group"
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum size of the Auto Scaling Group"
  default     = 10
}

variable "ec2_instance_type" {
  description = "The instance type to use for the EC2 instances"
  default     = "t2.micro"
}

variable "use_https" {
  description = "Whether to use HTTPS (requires a valid ACM certificate)"
  type        = bool
  default     = false
}

variable "cloudfront_price_class" {
  type        = string
  description = "The price class for CloudFront distribution"
  default     = "PriceClass_100"
}