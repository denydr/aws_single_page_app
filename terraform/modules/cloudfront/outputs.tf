output "domain_name" {
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
  description = "The domain name of the CloudFront distribution"
}

output "hosted_zone_id" {
  value       = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
  description = "The CloudFront Distribution hosted zone ID"
}

output "distribution_id" {
  value       = aws_cloudfront_distribution.s3_distribution.id
  description = "The ID of the CloudFront distribution"
}