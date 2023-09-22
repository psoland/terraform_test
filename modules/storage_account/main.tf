resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_data_lake_gen2_filesystem" "this" {
  name               = var.data_lake_gen2_filesystem_name
  storage_account_id = azurerm_storage_account.this.id
}
