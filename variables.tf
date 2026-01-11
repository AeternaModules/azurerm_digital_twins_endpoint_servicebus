variable "digital_twins_endpoint_servicebuss" {
  description = <<EOT
Map of digital_twins_endpoint_servicebuss, attributes below
Required:
    - digital_twins_id
    - name
    - servicebus_primary_connection_string
    - servicebus_secondary_connection_string
Optional:
    - dead_letter_storage_secret
EOT

  type = map(object({
    digital_twins_id                       = string
    name                                   = string
    servicebus_primary_connection_string   = string
    servicebus_secondary_connection_string = string
    dead_letter_storage_secret             = optional(string)
  }))
}

