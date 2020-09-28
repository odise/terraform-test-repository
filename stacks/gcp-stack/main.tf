resource random_id suffix {
  byte_length = 5
}

resource google_storage_bucket auto_expire {
  name          = "auto-expiring-bucket-${random_id.suffix.hex}"
  project       = var.gcp_project_name
  location      = "EU"
  force_destroy = true

  labels = {
    environment = var.environment
    owner       = var.owner
    project     = var.project
  }
  
  lifecycle_rule {
    condition {
      age = "3"
    }
    action {
      type = "Delete"
    }
  }
}

output bucket_name {
  value = google_storage_bucket.auto_expire.self_link
}
