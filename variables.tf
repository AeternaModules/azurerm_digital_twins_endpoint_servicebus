variable "digital_twins_endpoint_servicebus" {
  description = <<EOT
Map of digital_twins_endpoint_servicebus, attributes below
Required:
    - digital_twins_id
    - name
    - servicebus_primary_connection_string
    - servicebus_primary_connection_string_key_vault_id (optional, alternative to servicebus_primary_connection_string)
    - servicebus_primary_connection_string_key_vault_secret_name (optional, alternative to servicebus_primary_connection_string)
    - servicebus_secondary_connection_string
    - servicebus_secondary_connection_string_key_vault_id (optional, alternative to servicebus_secondary_connection_string)
    - servicebus_secondary_connection_string_key_vault_secret_name (optional, alternative to servicebus_secondary_connection_string)
Optional:
    - dead_letter_storage_secret
    - dead_letter_storage_secret_key_vault_id (alternative to dead_letter_storage_secret - read from Key Vault instead)
    - dead_letter_storage_secret_key_vault_secret_name (alternative to dead_letter_storage_secret - read from Key Vault instead)
EOT

  type = map(object({
    digital_twins_id                                             = string
    name                                                         = string
    servicebus_primary_connection_string                         = string
    servicebus_primary_connection_string_key_vault_id            = optional(string)
    servicebus_primary_connection_string_key_vault_secret_name   = optional(string)
    servicebus_secondary_connection_string                       = string
    servicebus_secondary_connection_string_key_vault_id          = optional(string)
    servicebus_secondary_connection_string_key_vault_secret_name = optional(string)
    dead_letter_storage_secret                                   = optional(string)
    dead_letter_storage_secret_key_vault_id                      = optional(string)
    dead_letter_storage_secret_key_vault_secret_name             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_servicebus : (
        length(v.name) >= 3
      )
    ])
    error_message = "[from validate.DigitalTwinsInstanceName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_servicebus : (
        length(v.name) <= 63
      )
    ])
    error_message = "[from validate.DigitalTwinsInstanceName: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_servicebus : (
        length(v.servicebus_primary_connection_string) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_servicebus : (
        length(v.servicebus_secondary_connection_string) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_endpoint_servicebus : (
        v.dead_letter_storage_secret == null || (length(v.dead_letter_storage_secret) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

