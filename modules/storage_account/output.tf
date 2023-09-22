output "primary_access_key" {
  description = "value of the storage account access key."
  value       = azurerm_storage_account.this.primary_access_key
}

output "name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.this.name
}
