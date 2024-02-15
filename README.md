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

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_secret_manager_secret.secrets](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.secret_versions](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_name"></a> [kms\_key\_name](#input\_kms\_key\_name) | Specifies the key of the CMEK to be used to encrypt the secret values in the versions stored in this secret. | `string` | n/a | yes |
| <a name="input_length"></a> [length](#input\_length) | The length of the password to be generated | `number` | `15` | no |
| <a name="input_min_lower"></a> [min\_lower](#input\_min\_lower) | Minimum number of lower case characters | `number` | `1` | no |
| <a name="input_min_numeric"></a> [min\_numeric](#input\_min\_numeric) | Minimum number of numeric characters | `number` | `1` | no |
| <a name="input_min_special"></a> [min\_special](#input\_min\_special) | Minimum number of special characters | `number` | `1` | no |
| <a name="input_min_upper"></a> [min\_upper](#input\_min\_upper) | Minimum number of upper case characters | `number` | `1` | no |
| <a name="input_override_special"></a> [override\_special](#input\_override\_special) | Provide your own list of special characters | `string` | `"_%@!"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to manage the Secret Manager resources | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The GCP region to create resources in. | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | The list of the secrets | <pre>list(object({<br>    id           = string<br>    data         = optional(string)<br>    skip_version = optional(bool, false)<br>  }))</pre> | `[]` | no |
| <a name="input_special"></a> [special](#input\_special) | Include special characters in random password string | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secrets"></a> [secrets](#output\_secrets) | List of secrets |
| <a name="output_secrets_versions"></a> [secrets\_versions](#output\_secrets\_versions) | List of secret versions |
<!-- END_TF_DOCS -->
