locals {
  bucket_name = "yuyatinnefeld"
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
  project = "yuyatinnefeld-dev"
  region  = local.region
  zone    = local.zone
}

module "static_website_cloud_storage" {
  source      = ".//terraform-google-cloud-storage-static-site"
  bucket_name = local.bucket_name
  location    = local.region
  env         = local.env
  domain      = local.domain
}


