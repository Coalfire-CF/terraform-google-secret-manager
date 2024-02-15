output "secrets" {
  value = { for k, v in google_secret_manager_secret.secrets : k =>
    {
      id   = v.id
      name = v.name
    }
  }

  description = "List of secrets"
}

output "secrets_versions" {
  value = { for k, v in google_secret_manager_secret_version.secret_versions : k =>
    {
      id   = v.id
      name = v.name
    }
  }

  description = "List of secret versions"
}
