
# App service plan
resource "azurerm_service_plan" "app_plan" {
  name                = var.azurerm_service_plan
  resource_group_name = data.azurerm_resource_group.grp_name.name
  location            = data.azurerm_resource_group.grp_name.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

# App service
resource "azurerm_windows_web_app" "win_webapp" {
  name                = var.azurerm_windows_web_app
  resource_group_name = data.azurerm_resource_group.grp_name.name
  location            = data.azurerm_resource_group.grp_name.location
  service_plan_id     = azurerm_service_plan.app_plan.id

  site_config {
    always_on = false
  }
}

// Trigger Test
