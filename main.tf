provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-demoazure-tf"
    storage_account_name = "nisargazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-demoazure" {
  name     = "rg-demoazure"
  location = "northcentralus"
}
