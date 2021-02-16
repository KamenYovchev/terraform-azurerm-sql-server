
resource "azurerm_sql_server" "sql-server" {
  name = var.name
  resource_group_name = var.resource_group_name
  location = var.location
  version = var.sql_server_version
  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_login_password

  extended_auditing_policy {
    storage_endpoint                        = var.storage_endpoint
    storage_account_access_key              = var.storage_account_access_key
    storage_account_access_key_is_secondary = var.storage_account_access_key_is_secondary
    retention_in_days                       = var.retention_in_days
  }
}

