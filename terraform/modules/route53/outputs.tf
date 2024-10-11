output "zone_id" {
  description = "The Hosted Zone ID of the domain"
  value       = var.create_route53_zone ? aws_route53_zone.primary[0].zone_id : var.existing_zone_id
}

output "name_servers" {
  description = "The name servers for the hosted zone"
  value       = var.create_route53_zone ? aws_route53_zone.primary[0].name_servers : []
}