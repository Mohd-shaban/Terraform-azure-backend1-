 terraform{
   backend "azurerm" {
    resource_group_name  = "fruits"        
     storage_account_name = "orangestorage43"
      container_name       = "orange-container-tfstate"
      key                  = "orange-tfstate"
   }
}