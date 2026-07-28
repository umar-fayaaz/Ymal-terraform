module "search_service_1" {

  source = "../../../modules/search_service"

  name                       = "srch-eva-dev"
  location                   = "East US"
  resource_group_name        = "rg-demo"
  sku                        = "basic"
  semantic_search_sku        = "free"
  network_rule_bypass_option = "None"
  tags = {
    Project = "Exelixis"
  }

}