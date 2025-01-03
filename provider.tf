terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.0.0"
    }
  }
}

provider "google" {
  project = "myfirstdevopsproject-442307"
  region = "asia-south2"
  impersonate_service_account = "main-sa-having-actual-roles@myfirstdevopsproject-442307.iam.gserviceaccount.com"
}
