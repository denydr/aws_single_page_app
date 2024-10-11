resource "aws_route53_zone" "primary" {
  count = var.create_route53_zone ? 1 : 0
  name  = var.domain_name

  tags = {
    Name = "${var.domain_name} Zone"
    Environment = var.environment
  }
}

resource "aws_route53_record" "www" {
  count   = var.create_route53_zone ? 1 : 0
  zone_id = var.create_route53_zone ? aws_route53_zone.primary[0].zone_id : var.existing_zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = var.s3_website_domain
    zone_id                = var.s3_website_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "cloudfront_record" {
  count   = var.create_route53_zone ? 1 : 0
  zone_id = var.create_route53_zone ? aws_route53_zone.primary[0].zone_id : var.existing_zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = var.cloudfront_domain_name
    zone_id                = var.cloudfront_zone_id
    evaluate_target_health = false
  }
}