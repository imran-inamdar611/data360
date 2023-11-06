terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.77.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "5735d561-214d-4d8d-bfc0-6a2c8a7dfbfe"
  client_id       = "e77dba17-e028-4f27-a6eb-cbe79863b2c8"
  client_secret   = "jOw8Q~lqSVB8fgbtrorIdoqGIZLbZT-X5ANsma1O"
  tenant_id       = "f92cf2bd-5a11-4d0b-a239-16af07a08587"
  features {}
}

resource "azurerm_resource_group" "imran_app_rg" {
    name = "app-grp12312351w"
    location = "North Europe"
  
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "imranew12"
  resource_group_name      = azurerm_resource_group.imran_app_rg.name
  location                 = azurerm_resource_group.imran_app_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_resource_group.imran_app_rg ]
}

