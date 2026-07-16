module "application_insights_1" {

  source = "../../../modules/application_insights"

  name                = "appi-test-1"
  location            = "eastus"
  resource_group_name = "rg-demo"
  application_type    = "web"
  sampling_percentage = 100
  tags = {
    Project = "Dev"
  }

}