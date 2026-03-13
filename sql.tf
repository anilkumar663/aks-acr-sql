resource "azurerm_mssql_server" "anil-sql" {
    name                         = "anil-sql"
    resource_group_name          = azurerm_resource_group.anil-rg.name
    location                     = azurerm_resource_group.anil-rg.location
    version                      = "12.0"
    administrator_login          = "sqladmin"
    administrator_login_password = "P@ssw0rd1234"
}

resource "azurerm_mssql_database" "anildb" {
    name                = "anildb"
  server_id = "azurerm_mssql_server.anil-sql.id"    
    sku_name = "S0"
}