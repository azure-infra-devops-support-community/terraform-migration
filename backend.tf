terraform {
  backend "azurerm" {
    resource_group_name   = "demo"
    storage_account_name  = "iacbootslab"
    container_name        = "tfstate-demo"
    key                   = "aksdemo.terraform.tfstate"
  }
}