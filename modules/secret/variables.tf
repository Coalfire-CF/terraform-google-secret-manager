variable "project_id" {
  type        = string
  description = "The project ID to manage the Secret Manager resources"
}

variable "region" {
  description = "The GCP region to create resources in."
  type        = string
}

variable "kms_key_name" {
  type        = string
  description = "Specifies the key of the CMEK to be used to encrypt the secret values in the versions stored in this secret."
}

variable "secret_id" {
  type        = string
  description = ""
}

variable "secret_data" {
  type        = string
  description = ""
}
