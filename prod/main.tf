# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "learn-terraform-github-actions-rg-prod"
  location = "japaneast"
}
