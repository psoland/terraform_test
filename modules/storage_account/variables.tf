variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the storage account."
  type        = string

}

variable "account_tier" {
  description = "The account tier."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The account replication type."
  type        = string
  default     = "LRS"
}

variable "data_lake_gen2_filesystem_name" {
  description = "The name of the storage data lake gen2 filesystem."
  type        = string
  default     = "lake"
}
