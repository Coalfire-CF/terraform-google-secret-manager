resource "google_secret_manager_secret" "secret" {
  project = var.project_id

  secret_id = var.secret_id

  replication {
    user_managed {
      replicas {
        location = var.region
        customer_managed_encryption {
          kms_key_name = var.kms_key_name
        }
      }
    }
  }
}

resource "google_secret_manager_secret_version" "version" {
  secret      = google_secret_manager_secret.secret.id
  secret_data = var.secret_data
}
