output "subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

output "endpoint" {
  value = azurerm_storage_account.storage_account.primary_web_endpoint
}