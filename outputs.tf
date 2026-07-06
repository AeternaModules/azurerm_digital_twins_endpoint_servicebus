output "digital_twins_endpoint_servicebuses" {
  description = "All digital_twins_endpoint_servicebus resources"
  value       = azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses
  sensitive   = true
}
output "digital_twins_endpoint_servicebuses_dead_letter_storage_secret" {
  description = "List of dead_letter_storage_secret values across all digital_twins_endpoint_servicebuses"
  value       = [for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : v.dead_letter_storage_secret]
  sensitive   = true
}
output "digital_twins_endpoint_servicebuses_digital_twins_id" {
  description = "List of digital_twins_id values across all digital_twins_endpoint_servicebuses"
  value       = [for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : v.digital_twins_id]
}
output "digital_twins_endpoint_servicebuses_name" {
  description = "List of name values across all digital_twins_endpoint_servicebuses"
  value       = [for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : v.name]
}
output "digital_twins_endpoint_servicebuses_servicebus_primary_connection_string" {
  description = "List of servicebus_primary_connection_string values across all digital_twins_endpoint_servicebuses"
  value       = [for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : v.servicebus_primary_connection_string]
  sensitive   = true
}
output "digital_twins_endpoint_servicebuses_servicebus_secondary_connection_string" {
  description = "List of servicebus_secondary_connection_string values across all digital_twins_endpoint_servicebuses"
  value       = [for k, v in azurerm_digital_twins_endpoint_servicebus.digital_twins_endpoint_servicebuses : v.servicebus_secondary_connection_string]
  sensitive   = true
}

