resource "google_storage_bucket" "my-bucket-for-github-01" {
  name = "my-bucket-for-github"
  location = "europe-west4"
  versioning {
    enabled = true
  }
  lifecycle_rule {
    condition {
      age = 30 # Delete objects older than 30 days
    }
    action {
      type = "Delete"
    }
  }
}
