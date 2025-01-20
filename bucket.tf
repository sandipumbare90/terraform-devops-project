resource "google_storage_bucket" "my-bucket-for-github-01" {
  name = "my-bucket-for-github"
  location = "europe-west4"
  uniform_bucket_level_access = true
}
