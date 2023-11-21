# Microsoft Entra ID (Azure AD)
resource "azuread_application" "application" {
  display_name     = "${var.prefix}-application"
}

# Resource Group
resource "azurerm_resource_group" "azure_bot_rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}

# Azure Bot
resource "azurerm_bot_service_azure_bot" "azure_bot" {
  name                = "${var.prefix}-bot"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "global"
  microsoft_app_type  = var.microsoft_app_type
  microsoft_app_id    = azuread_application.application.microsoft_app_id
  sku                 = var.sku
}