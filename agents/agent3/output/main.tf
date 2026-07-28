module "log_analytics_workspace_1" {

  source = "../../../modules/log_analytics_workspace"

  name = "law-eva-qa"
  location = "East US"
  resource_group_name = "rg-demo"
  tags = {
  Project = "Exelixis"
}

}

module "log_analytics_workspace_2" {

  source = "../../../modules/log_analytics_workspace"

  name = "law-eva-uat"
  location = "East US"
  resource_group_name = "rg-demo"
  tags = {
  Project = "Exelixis"
}

}