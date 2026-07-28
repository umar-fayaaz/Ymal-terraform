module "service_plan_1" {

  source = "../../../modules/service_plan"

  name                = "asp-eva-dev"
  location            = "East US"
  resource_group_name = "rg-demo"
  os_type             = "Linux"
  sku_name            = "S2"
  tags = {
    Project = "Exelixis"
  }

}