output "website_url" {
  value       = "http://${module.s3_website.website_endpoint}"
  description = "The URL of the website"
}

output "s3_bucket_name" {
  value       = module.s3_website.bucket_name
  description = "The name of the S3 bucket hosting the website content"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the created VPC"
}

output "public_subnet_ids" {
  value       = module.vpc.public_subnet_ids
  description = "The IDs of the public subnets"
}

output "private_subnet_ids" {
  value       = module.vpc.private_subnet_ids
  description = "The IDs of the private subnets"
}

output "website_bucket_name" {
  value       = module.s3_website.bucket_name
  description = "The name of the S3 bucket hosting the website content"
}

output "debug_vpc_id" {
  value = module.vpc.vpc_id
}

output "debug_public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "cloudfront_domain_name" {
  value       = module.cloudfront.domain_name
  description = "The domain name of the CloudFront distribution"
}