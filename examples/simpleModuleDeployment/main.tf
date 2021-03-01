# ---------------------------------------------------------------------------------------------------------------------
# PIN TERRAFORM VERSION TO >= 0.12
# The examples have been upgraded to 0.12 syntax
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  # This module is now only being tested with Terraform 0.13.x. However, to make upgrading easier, we are setting
  # forwards compatible with 0.13.x code.
  required_version = ">= 0.13.0"
}

provider "azurerm" {
  features {}
}

# ---------------------------------------------------------------------------------------------------------------------
# BASIC TERRAFORM EXAMPLE
# testing creation of a resource Group in Azure
# ---------------------------------------------------------------------------------------------------------------------

module "resource-group" {
  source = "../"

  location = "UK South"
  rg_name  = "rg-dev-testing"
}


output "rg_name" {
  value = module.resource-group.rg_name
}

output "rg_location" {
  value = module.resource-group.rg_location
}

output "rg_tags" {
  value = module.resource-group.rg_tags
}
