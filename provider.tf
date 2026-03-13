terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
}
provider "azurerm" {
    features {}
    resource_provider_registrations = "none"
    subscription_id = "84fffe9e-21a8-4f72-93c2-471d1c785dba"
}