module "log_analytics_workspace_1" {

  source = "../../../modules/log_analytics_workspace"

  name                = "law-eva-uat"
  location            = "East US"
  resource_group_name = "rg-demo"
  tags = {
    Project = "Exelixis"
  }

}