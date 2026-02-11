resource "azurerm_digital_twins_endpoint_servicebus" "digital_twins_endpoint_servicebuses" {
  for_each = var.digital_twins_endpoint_servicebuses

  digital_twins_id                       = each.value.digital_twins_id
  name                                   = each.value.name
  servicebus_primary_connection_string   = each.value.servicebus_primary_connection_string
  servicebus_secondary_connection_string = each.value.servicebus_secondary_connection_string
  dead_letter_storage_secret             = each.value.dead_letter_storage_secret
}

