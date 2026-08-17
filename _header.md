![Coalfire](coalfire_logo.png)

# Google Cloud Secret Manager Terraform Module

## Description

This Secret Manager module allows you to easily create any needed secrets in Secret Manager. This module loops through a list of variable names and creates a secret and randomly generated password for each item. Coalfire has tested this module with Terraform version 1.5.0 and the Hashicorp Google provider versions 4.70 - 5.0.

FedRAMP Compliance: Moderate

### Usage

```
module "ad-secrets" {
  source = "github.com/Coalfire-CF/terraform-gcp-secret-manager"

  project_id = "your-project-id"
  region     = "us-central1-a"

  secrets = [
    {
      id = "db1-password",
    },
    {
      id = "db2-password",
    }
  ]

  kms_key_name = "kms-key-name"

  length           = 15
  special          = true
  override_special = "_%@!"
  min_lower        = 1
  min_upper        = 1
  min_numeric      = 1
  min_special      = 1
}
```

