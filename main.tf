terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  project = "hello-yuya-project"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

module "static_website_cloud_storage" {
  source      = ".//terraform-google-cloud-storage-static-site"
  bucket_name = "terraform-image-static-website-example"
  location    = "EU"
  env         = "dev"
  domain      = "com"
}


