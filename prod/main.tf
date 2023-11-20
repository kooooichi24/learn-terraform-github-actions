# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "learn-terraform-github-actions-1-rg-prod"
  location = "japaneast"
}
