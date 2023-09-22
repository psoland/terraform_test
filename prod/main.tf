terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  # Configured using backend.conf, run init/apply using `terraform plan -backend-config backend.conf` flag
  #   backend "azurerm" {}
}

locals {
  name_suffix = "${var.project_name}-${var.environment}"
}

module "naming" {
  source = "Azure/naming/azurerm"
  suffix = ["${var.project_name}", "${var.environment}"]
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source              = "../modules/resource_group"
  resource_group_name = module.naming.resource_group.name
}

module "storage_account" {
  source               = "../modules/storage_account"
  storage_account_name = module.naming.storage_account.name_unique
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
}

module "application_insights" {
  source                    = "../modules/application_insights"
  application_insights_name = module.naming.application_insights.name
  resource_group_name       = module.resource_group.name
  location                  = module.resource_group.location
}

module "service_plan" {
  source              = "../modules/service_plan"
  service_plan_name   = module.naming.app_service_plan.name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
}

module "linux_function" {
  source                     = "../modules/linux_function"
  function_name              = module.naming.function_app.name
  resource_group_name        = module.resource_group.name
  location                   = module.resource_group.location
  storage_account_name       = module.storage_account.name
  storage_account_access_key = module.storage_account.primary_access_key
  service_plan_id            = module.service_plan.id
  application_insights_key   = module.application_insights.instrumentation_key
}

