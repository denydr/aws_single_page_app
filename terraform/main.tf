terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "random" {}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

module "acm" {
  count       = var.use_https ? 1 : 0
  source      = "./modules/acm"
  domain_name = var.domain_name
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
  environment = var.environment
  region      = var.aws_region
}

module "s3_website" {
  source      = "./modules/s3_website"
  bucket_name = "${var.project_name}-${var.environment}-${random_string.suffix.result}"
  environment = var.environment
}

module "route53" {
  source                 = "./modules/route53"
  domain_name            = var.domain_name
  s3_website_domain      = module.s3_website.website_endpoint
  s3_website_zone_id     = module.s3_website.hosted_zone_id
  environment            = var.environment
  create_route53_zone    = var.create_route53_zone
  existing_zone_id       = var.existing_zone_id
  cloudfront_domain_name = module.cloudfront.domain_name
  cloudfront_zone_id     = module.cloudfront.hosted_zone_id
}

module "cloudfront" {
  source = "./modules/cloudfront"
  s3_bucket_website_endpoint = module.s3_website.website_endpoint
  s3_bucket_arn = module.s3_website.bucket_arn
  environment = var.environment
  price_class = var.cloudfront_price_class
  acm_certificate_arn = var.use_https ? module.acm[0].certificate_arn : null
}