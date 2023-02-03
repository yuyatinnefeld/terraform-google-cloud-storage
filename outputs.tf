output "organization_name" {
  value = local.organization_name
}

output "bucket-name" {
  value = "${local.organization_name}${local.domain}"
}

output "environment" {
  value = local.env
}