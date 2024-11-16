provider "azurerm" {
  features {}
  subscription_id = "547278e7-01d9-4f7c-9e1d-b32e9dc1d729"
}

resource "azurerm_resource_group" "roshansqlrg" {
  name     = "roshansqlrg"
  location = "westus"
}

resource "azurerm_mysql_flexible_server" "mysqldbnew21" {
  name                   = "mysqldb-flexible-server100"
  resource_group_name    = azurerm_resource_group.roshansqlrg.name
  location               = azurerm_resource_group.roshansqlrg.location
  administrator_login    = "roshanzam"
  administrator_password = "RoshanZameer@123"
  sku_name               = "B_Standard_B1s"
}

resource "azurerm_mysql_flexible_database" "mysqldbnew" {
  name                = "mysqldb1"
  resource_group_name = azurerm_resource_group.roshansqlrg.name
  server_name         = azurerm_mysql_flexible_server.mysqldbnew21.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
