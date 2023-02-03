locals {
  organization_name = "yuyatinnefeld"
  project_id = "yuyatinnefeld-dev"
  env = "dev"
  region = "europe-west1"
  zone = "europe-west1-b"
  domain = ".com"
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
  region  = local.region
  zone    = local.zone
}

module "static_website_cloud_storage" {
  source      = ".//terraform-google-cloud-storage-static-site"
  bucket_name = local.organization_name
  location    = local.region
  env         = local.env
  domain      = local.domain
}


