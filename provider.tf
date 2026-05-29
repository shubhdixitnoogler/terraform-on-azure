terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "bd079267-ab8b-4787-b2d8-bb7594fb6468"

    features{}
}