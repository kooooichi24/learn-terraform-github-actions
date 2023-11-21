variable "product_name" {
  type        = string
  description = "Product Name"
}

variable "environment" {
  type        = string
  description = "Environment"
}

variable "location" {
  type        = string
  description = "Location for all resources"
  default     = "japaneast"
}

variable "microsoft_app_type" {
  type        = string
  description = "Microsoft App Type"
  default     = "MultiTenant"
}

variable "sku" {
  type        = string
  description = "SKU"
  default     = "F0"
}
