variable "resource_group_name" {
  description = "Azure resource group name."
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
  default     = "Norway East"
}
