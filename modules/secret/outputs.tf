output "secret_id" {
  description = "Secret ID."
  value       = google_secret_manager_secret.secret.id
}

output "secret_name" {
  description = "Secret name."
  value       = google_secret_manager_secret.secret.name
}

output "secret_version_id" {
  description = "Secret version ID."
  value       = google_secret_manager_secret_version.version.id
}

output "secret_version_name" {
  description = "Secret version name."
  value       = google_secret_manager_secret_version.version.name
}
