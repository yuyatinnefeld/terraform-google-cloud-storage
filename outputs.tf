output "organization_name" {
  value = var.organization_name
}

output "bucket-name" {
  value = "${var.organization_name}${var.domain}"
}

output "environment" {
  value = var.env
}