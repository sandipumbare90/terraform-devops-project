terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.0.0"
    }
  }
backend "gcs" {
    bucket = "myfirstdevopsproject-442307"
    prefix = "terraform/state"
              }
}

provider "google" {
  project = var.project
  region = var.region
  #impersonate_service_account = "main-sa-having-actual-roles@myfirstdevopsproject-442307.iam.gserviceaccount.com"
}


