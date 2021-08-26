provider "azurerm" {
  version = "=2.0.0"
  features {}
}


terraform {
  backend "gh-action-demo" {
    subscription_id      = "c9e520b1-2096-473b-973b-e2d45ac13eae"
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
