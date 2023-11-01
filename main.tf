terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.77.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "imran_app_rg" {
    name = "app-grp611"
    location = "North Europe"
  
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "imranariznew"
  resource_group_name      = "app-grp0611"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_resource_group.imran_app_rg ]
}

