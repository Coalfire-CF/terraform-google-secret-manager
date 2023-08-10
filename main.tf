resource "google_secret_manager_secret" "secrets" {
  for_each = { for secret in var.secrets : secret.id => secret }

  project = var.project_id

  secret_id = each.value.id

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

resource "google_secret_manager_secret_version" "secret_versions" {
  for_each = { for secret in var.secrets : secret.id => secret if secret.skip_version != true }

  secret      = google_secret_manager_secret.secrets[each.value.id].id
  secret_data = each.value.data == null ? random_password.password[each.value.id].result : each.value.data
}

resource "random_password" "password" {
  for_each = { for secret in var.secrets : secret.id => secret if secret.data == null && secret.skip_version != true }

  length           = var.length
  special          = var.special
  override_special = var.override_special
  min_lower        = var.min_lower
  min_upper        = var.min_upper
  min_numeric      = var.min_numeric
  min_special      = var.min_special
}
