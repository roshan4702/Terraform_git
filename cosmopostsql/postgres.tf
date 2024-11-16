provider "azurerm" {
  features {}
  subscription_id = "547278e7-01d9-4f7c-9e1d-b32e9dc1d729"
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "roshanpostsqlrg"
  location = "Central US"
}

# Create PostgreSQL Flexible Server
resource "azurerm_postgresql_flexible_server" "roshan_server" {
  name                   = "roshanserver"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "citus"
  administrator_password = "Roshanzam@123"
  version                = "16"
  sku_name               = "GP_Standard_D2s_v3"
  storage_mb             = 32768

  public_network_access_enabled = true
  tags = {
    Environment = "Development"
  }
}

# Create PostgreSQL Database
resource "azurerm_postgresql_flexible_server_database" "postgracedatabase" {
  name       = "postgracedb"
  server_id  = azurerm_postgresql_flexible_server.roshan_server.id  # Correct reference
}

