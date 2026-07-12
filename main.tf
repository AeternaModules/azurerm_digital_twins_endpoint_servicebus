data "azurerm_key_vault_secret" "servicebus_primary_connection_string" {
  for_each     = { for k, v in var.digital_twins_endpoint_servicebuses : k => v if v.servicebus_primary_connection_string_key_vault_id != null && v.servicebus_primary_connection_string_key_vault_secret_name != null }
  name         = each.value.servicebus_primary_connection_string_key_vault_secret_name
  key_vault_id = each.value.servicebus_primary_connection_string_key_vault_id
}
data "azurerm_key_vault_secret" "servicebus_secondary_connection_string" {
  for_each     = { for k, v in var.digital_twins_endpoint_servicebuses : k => v if v.servicebus_secondary_connection_string_key_vault_id != null && v.servicebus_secondary_connection_string_key_vault_secret_name != null }
  name         = each.value.servicebus_secondary_connection_string_key_vault_secret_name
  key_vault_id = each.value.servicebus_secondary_connection_string_key_vault_id
}
data "azurerm_key_vault_secret" "dead_letter_storage_secret" {
  for_each     = { for k, v in var.digital_twins_endpoint_servicebuses : k => v if v.dead_letter_storage_secret_key_vault_id != null && v.dead_letter_storage_secret_key_vault_secret_name != null }
  name         = each.value.dead_letter_storage_secret_key_vault_secret_name
  key_vault_id = each.value.dead_letter_storage_secret_key_vault_id
}
resource "azurerm_digital_twins_endpoint_servicebus" "digital_twins_endpoint_servicebuses" {
  for_each = var.digital_twins_endpoint_servicebuses

  digital_twins_id                       = each.value.digital_twins_id
  name                                   = each.value.name
  servicebus_primary_connection_string   = each.value.servicebus_primary_connection_string != null ? each.value.servicebus_primary_connection_string : try(data.azurerm_key_vault_secret.servicebus_primary_connection_string[each.key].value, null)
  servicebus_secondary_connection_string = each.value.servicebus_secondary_connection_string != null ? each.value.servicebus_secondary_connection_string : try(data.azurerm_key_vault_secret.servicebus_secondary_connection_string[each.key].value, null)
  dead_letter_storage_secret             = each.value.dead_letter_storage_secret != null ? each.value.dead_letter_storage_secret : try(data.azurerm_key_vault_secret.dead_letter_storage_secret[each.key].value, null)
}

