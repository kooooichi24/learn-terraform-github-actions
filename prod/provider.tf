# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.81.0"
    }
  }

  required_version = ">= 1.1.0"

  cloud {
    organization = "koichi-furukawa"
    workspaces {
      project = "learn-terraform-github-actions"
      name    = "learn-terraform-github-actions-prod"
    }
  }
}

provider "azurerm" {
  features {}
}
