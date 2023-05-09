
variable "azurerm_storage_name" {
  default     = "incastgkevin1"
  type        = string
  description = "Name_of_storage_account"
}

variable "account_tier" {
  default     = "Standard"
  type        = string
  description = "account_tier"
}

variable "account_replication_type" {
  default     = "LRS"
  type        = string
  description = "account_replication_type"
}

variable "azurerm_service_plan" {
  default     = "appservice-plan"
  type        = string
  description = "azurerm_service_plan"
}

variable "os_type" {
  default     = "Windows"
  type        = string
  description = "os_type"
}

variable "sku_name" {
  default     = "F1"
  type        = string
  description = "sku_name"
}

 variable "azurerm_windows_web_app" {
   default     = "kevin-webapp"
   type        = string
   description = "azurerm_windows_web_app"
 }
