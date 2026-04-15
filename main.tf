

resource "azurerm_resource_group" "fruits-rg" {
  name     = "fruits"
  location = "East US"
}

resource "azurerm_storage_account" "fruits-locker" {
  name                     = "orangestorage43"
  resource_group_name      = azurerm_resource_group.fruits-rg.name
  location                 = azurerm_resource_group.fruits-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "orange-tfstate" {
  name                  = "orange-container-tfstate"
  storage_account_id    = azurerm_storage_account.fruits-locker.id
  container_access_type = "private"
}

 