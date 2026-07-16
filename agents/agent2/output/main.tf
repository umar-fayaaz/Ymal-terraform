module "storage_account_1" {

  source = "../../../modules/storage_account"

  name = "stagent2001"
  location = "eastus"
  resource_group_name = "rg-demo"
  account_tier = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
  allow_nested_items_to_be_public = false
  default_to_oauth_authentication = false

}

module "service_plan_1" {

  source = "../../../modules/service_plan"

  name = "asp-agent2"
  location = "eastus"
  resource_group_name = "rg-demo"
  os_type = "Linux"
  sku_name = "B1"

}