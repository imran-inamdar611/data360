terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.77.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "24fe603e-6b8f-4384-a5c7-cc1e8f9c1a65"
  client_id       = "75bea418-8866-46a3-b2af-0af80fdd26f5"
  client_secret   = "tiu8Q~EMjLl.LIDFStqOfu1O_C6xcoLa-uG22bKP"
  tenant_id       = "ab8b6a07-e366-49dc-b3ca-0613f7fac7e8"
  features {}
}

resource "azurerm_resource_group" "imran_app_rg" {
    name = "app-grp611"
    location = "North Europe"
  
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "Imranariznew"
  resource_group_name      = "app-grp0611"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_resource_group.imran_app_rg ]
}

