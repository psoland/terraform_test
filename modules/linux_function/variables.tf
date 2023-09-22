variable "function_name" {
  description = "Name of the Linux Function App."
  type        = string
}

variable "python_version" {
  description = "value of the python version."
  type        = string
  default     = "3.10"
}

variable "function_app_settings" {
  type = map(string)
  default = {
    FUNCTIONS_WORKER_RUNTIME = "python",
    "AzureWebJobsFeatureFlags" : "EnableWorkerIndexing"
  }
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
}

variable "storage_account_access_key" {
  description = "Value of the storage account access key."
  type        = string
}

variable "service_plan_id" {
  description = "Value of the servide plan id."
  type        = string
}

variable "application_insights_key" {
  description = "Value of the application insights instrumentation key."
  type        = string

}
