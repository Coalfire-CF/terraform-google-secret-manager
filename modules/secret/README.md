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
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_secret_manager_secret.secret](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.version](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_name"></a> [kms\_key\_name](#input\_kms\_key\_name) | Specifies the key of the CMEK to be used to encrypt the secret values in the versions stored in this secret. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to manage the Secret Manager resources | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The GCP region to create resources in. | `string` | n/a | yes |
| <a name="input_secret_data"></a> [secret\_data](#input\_secret\_data) | n/a | `string` | n/a | yes |
| <a name="input_secret_id"></a> [secret\_id](#input\_secret\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Name of secret. |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | Secret ID. |
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | Secret name. |
| <a name="output_secret_version_id"></a> [secret\_version\_id](#output\_secret\_version\_id) | Secret version ID. |
| <a name="output_secret_version_name"></a> [secret\_version\_name](#output\_secret\_version\_name) | Secret version name. |
<!-- END_TF_DOCS -->