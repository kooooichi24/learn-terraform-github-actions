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
      name = "learn-terraform-github-actions"
    }
  }
}

provider "azurerm" {
  features {}
}
