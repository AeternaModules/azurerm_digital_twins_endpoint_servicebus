output "digital_twins_endpoint_servicebuses_dead_letter_storage_secret" {
  description = "Map of dead_letter_storage_secret values across all digital_twins_endpoint_servicebuses, keyed the same as var.digital_twins_endpoint_servicebuses"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : k => v.dead_letter_storage_secret }
  sensitive   = true
}
output "digital_twins_endpoint_servicebuses_digital_twins_id" {
  description = "Map of digital_twins_id values across all digital_twins_endpoint_servicebuses, keyed the same as var.digital_twins_endpoint_servicebuses"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : k => v.digital_twins_id }
}
output "digital_twins_endpoint_servicebuses_name" {
  description = "Map of name values across all digital_twins_endpoint_servicebuses, keyed the same as var.digital_twins_endpoint_servicebuses"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : k => v.name }
}
output "digital_twins_endpoint_servicebuses_servicebus_primary_connection_string" {
  description = "Map of servicebus_primary_connection_string values across all digital_twins_endpoint_servicebuses, keyed the same as var.digital_twins_endpoint_servicebuses"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : k => v.servicebus_primary_connection_string }
  sensitive   = true
}
output "digital_twins_endpoint_servicebuses_servicebus_secondary_connection_string" {
  description = "Map of servicebus_secondary_connection_string values across all digital_twins_endpoint_servicebuses, keyed the same as var.digital_twins_endpoint_servicebuses"
  value       = { for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : k => v.servicebus_secondary_connection_string }
  sensitive   = true
}

