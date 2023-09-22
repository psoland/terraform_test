variable "application_insights_name" {
  description = "The name of the application insights."
  type        = string
}

variable "application_type" {
  description = "The application type of the application insights."
  type        = string
  default     = "web"
}

variable "location" {
  description = "The location of the resource group."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}
