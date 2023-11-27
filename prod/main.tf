module "azure_bot" {
  source = "../modules/azure-bot"

  product_name = "koichi-furukawa-example-2"
  environment  = "prod"
}
