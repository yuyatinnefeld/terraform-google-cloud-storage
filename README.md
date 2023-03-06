# Terraform Module to provision a Google Cloud Storage for the static website

### adjust the local variables for your GCP project
```hcl
locals {
  project_id = "yuyatinnefeld-dev"
  zone = "europe-west1-b"
}
```
### use these local variables in main.tf

```hcl
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
  source            = "yuyatinnefeld/cloud-storage/google"
  organization_name = var.organization_name
  region            = var.region
  env               = var.env
  domain            = var.domain
}
```

## [Terraform Registry](https://registry.terraform.io/modules/yuyatinnefeld/cloud-storage/google/latest)

