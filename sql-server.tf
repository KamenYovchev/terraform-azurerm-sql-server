
provider "azurerm" {

  version = "=2.28.0"
  features {}

}

resource "azurerm_sql_server" "sql-server" {
  name = var.name
  resource_group_name = var.resource_group_name
  location = var.location
  version = var.sql_server_version
  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_login_password
}