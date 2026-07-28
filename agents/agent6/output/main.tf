module "ai_services_1" {

  source = "../../../modules/ai_services"

  name                  = "ai-eva-dev"
  location              = "East US"
  resource_group_name   = "rg-demo"
  custom_subdomain_name = "ai-eva-dev"
  sku_name              = "S0"
  identity_type         = "SystemAssigned"
  default_action        = "Allow"
  ip_rules              = []
  tags = {
    Project = "Exelixis"
  }

}