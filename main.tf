locals {
  project_id = "yuyatinnefeld-dev"
  zone = "europe-west1-b"
}


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  project = local.project_id
  zone    = local.zone
}

module "static_website_cloud_storage" {
  source      = ".//terraform-google-cloud-storage-static-site"
  bucket_name = var.organization_name
  location    = var.region
  env         = var.env
  domain      = var.domain
}


