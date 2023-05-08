provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.53.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "isd-w-infra-rg"
    storage_account_name = "isdwtfsa"
    container_name       = "kevin"
    key                  = "storageaccountkevin.tfstate"
  }
}
