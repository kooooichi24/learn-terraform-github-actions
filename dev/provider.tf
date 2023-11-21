# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.81.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.46.0"
    }
  }

  required_version = ">= 1.6.4"

  cloud {
    organization = "koichi-furukawa"
    workspaces {
      project = "learn-terraform-github-actions"
      name    = "learn-terraform-github-actions-dev"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {}
