resource "azurerm_postgresql_server" "database_instance" {
  name                = "n01605345-database"
  resource_group_name = var.N01605345_Rg_name
  location            = var.N01605345_Rg_location
  sku_name            = var.sku_name
  version             = var.postgresql_version

  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
  ssl_enforcement_enabled      = true

  tags = var.common_tags
}
