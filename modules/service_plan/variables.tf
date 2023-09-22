variable "service_plan_name" {
  description = "The name of the application insights."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the resource group."
  type        = string
}

variable "os_type" {
  description = "The OS type of the service plan."
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "The SKU name of the service plan."
  type        = string
  default     = "Y1"
}
