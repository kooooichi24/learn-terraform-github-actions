# Microsoft Entra ID (Azure AD)
resource "azuread_application" "application" {
  display_name = "${var.product_name}-${var.environment}"
}

resource "time_rotating" "example" {
  rotation_days = 365
}

resource "azuread_application_password" "example" {
  display_name   = "${var.product_name}-${var.environment}-client-secret"
  application_id = azuread_application.application.id
  rotate_when_changed = {
    rotation = time_rotating.example.id
  }
}

# Resource Group
resource "azurerm_resource_group" "azure_bot_rg" {
  name     = "${var.product_name}-rg-${var.environment}"
  location = var.location
}

# Azure Bot
resource "azurerm_bot_service_azure_bot" "azure_bot" {
  name                = "${var.product_name}-bot-${var.environment}"
  resource_group_name = azurerm_resource_group.azure_bot_rg.name
  location            = "global"
  microsoft_app_type  = var.microsoft_app_type
  microsoft_app_id    = azuread_application.application.client_id
  sku                 = var.sku
}
