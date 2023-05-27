resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "tf-state-bucket-demo" {
  name     = "tf-state-bucket-demo-${random_id.bucket_prefix.hex}"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
