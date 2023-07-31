variable "project_id" {
  type        = string
  description = "The project ID to manage the Secret Manager resources"
}

variable "region" {
  description = "The GCP region to create resources in."
  type        = string
}

variable "secrets" {
  type = list(object({
    id           = string
    data         = optional(string)
    skip_version = optional(bool, false)
  }))
  description = "The list of the secrets"
  default     = []
}

variable "kms_key_name" {
  type        = string
  description = "Specifies the key of the CMEK to be used to encrypt the secret values in the versions stored in this secret."
}

variable "length" {
  type        = number
  description = "The length of the password to be generated"
  default     = 15
}

variable "special" {
  type        = bool
  description = "Include special characters in random password string"
  default     = true
}

variable "override_special" {
  type        = string
  description = "Provide your own list of special characters"
  default     = "_%@!"
}

variable "min_lower" {
  type        = number
  description = "Minimum number of lower case characters"
  default     = 1
}

variable "min_upper" {
  type        = number
  description = "Minimum number of upper case characters"
  default     = 1
}

variable "min_numeric" {
  type        = number
  description = "Minimum number of numeric characters"
  default     = 1
}

variable "min_special" {
  type        = number
  description = "Minimum number of special characters"
  default     = 1
}
