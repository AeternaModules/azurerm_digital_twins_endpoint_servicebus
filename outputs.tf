output "digital_twins_endpoint_servicebus_id" {
  description = "Map of id values across all digital_twins_endpoint_servicebus, keyed the same as var.digital_twins_endpoint_servicebus"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebus : k => v.id if v.id != null && length(v.id) > 0 }
}
output "digital_twins_endpoint_servicebus_dead_letter_storage_secret" {
  description = "Map of dead_letter_storage_secret values across all digital_twins_endpoint_servicebus, keyed the same as var.digital_twins_endpoint_servicebus"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebus : k => v.dead_letter_storage_secret if v.dead_letter_storage_secret != null && length(v.dead_letter_storage_secret) > 0 }
  sensitive   = true
}
output "digital_twins_endpoint_servicebus_digital_twins_id" {
  description = "Map of digital_twins_id values across all digital_twins_endpoint_servicebus, keyed the same as var.digital_twins_endpoint_servicebus"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebus : k => v.digital_twins_id if v.digital_twins_id != null && length(v.digital_twins_id) > 0 }
}
output "digital_twins_endpoint_servicebus_name" {
  description = "Map of name values across all digital_twins_endpoint_servicebus, keyed the same as var.digital_twins_endpoint_servicebus"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebus : k => v.name if v.name != null && length(v.name) > 0 }
}
output "digital_twins_endpoint_servicebus_servicebus_primary_connection_string" {
  description = "Map of servicebus_primary_connection_string values across all digital_twins_endpoint_servicebus, keyed the same as var.digital_twins_endpoint_servicebus"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebus : k => v.servicebus_primary_connection_string if v.servicebus_primary_connection_string != null && length(v.servicebus_primary_connection_string) > 0 }
  sensitive   = true
}
output "digital_twins_endpoint_servicebus_servicebus_secondary_connection_string" {
  description = "Map of servicebus_secondary_connection_string values across all digital_twins_endpoint_servicebus, keyed the same as var.digital_twins_endpoint_servicebus"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebus : k => v.servicebus_secondary_connection_string if v.servicebus_secondary_connection_string != null && length(v.servicebus_secondary_connection_string) > 0 }
  sensitive   = true
}

