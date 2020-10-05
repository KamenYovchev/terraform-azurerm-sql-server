 
variable name {}
variable resource_group_name {}
variable location {}
variable administrator_login {}
variable administrator_login_password {}
variable sql_server_version {}

##################################################################################
# LOCALS
##################################################################################

locals {
  env_name = lower(terraform.workspace)
}