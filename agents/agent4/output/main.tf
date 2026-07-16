module "service_plan_1" {

  source = "../../../modules/service_plan"

  name = "asp-test-agent4"
  location = "eastus"
  resource_group_name = "rg-demo"
  os_type = "Linux"
  sku_name = "B1"
  tags = {
  Project = "Dev"
}

}

module "application_insights_1" {

  source = "../../../modules/application_insights"

  name = "appi-test"
  location = "eastus"
  resource_group_name = "rg-demo"
  application_type = "web"
  sampling_percentage = 100
  tags = {
  Project = "Dev"
}

}