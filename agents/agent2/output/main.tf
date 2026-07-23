module "service_plan_1" {

  source = "../../../modules/service_plan"

  name                = "asp-eva-dev"
  resource_group_name = "rg-demo"
  location            = "EastUS"
  os_type             = "Linux"
  sku_name            = "B1"
  tags = {
    Project = "Exelixis"
  }

}