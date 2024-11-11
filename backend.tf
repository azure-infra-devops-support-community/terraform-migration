terraform {
  backend "azurerm" {
    resource_group_name   = "Chidi"
    storage_account_name  = "azbootcampsa"
    container_name        = "tfstate"
    key                   = "mgrt.terraform.tfstate"
  }
}