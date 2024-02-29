# GSM Secret

Creates a single GSM secret.

## Usage

```hcl
module "gsm" {
  source = "github.com/Coalfire-CF/terraform-google-secret-manager//modules/secret"

  project_id   = "your-project-id"
  region       = "your-region"
  kms_key_name = "your-kms-key-name"

  secret_id   = "foo"
  secret_data = "bar"
}

```