terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "awoisoak-devops"
    workspaces {
      name = "terraservice-core"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.45.0"
    }
    google-beta = {
      source = "hashicorp/google-beta"
      version = "4.48.0"
    }

    tfe = {
      source = "hashicorp/tfe"
      version = "0.41.0"
    }
  }
}

provider "google" {
  credentials = var.gcp_credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

provider "google-beta" {
  credentials = var.gcp_credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}