output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.website.website_endpoint
}

output "hosted_zone_id" {
  value = aws_s3_bucket.website.hosted_zone_id
}

output "bucket_arn" {
  value = aws_s3_bucket.website.arn
}

output "bucket_name" {
  value = aws_s3_bucket.website.id
}

output "bucket_regional_domain_name" {
  value = aws_s3_bucket.website.bucket_regional_domain_name
}