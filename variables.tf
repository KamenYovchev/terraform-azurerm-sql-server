 
variable name {}
variable resource_group_name {}
variable location {}
variable administrator_login {
  type = string
}
variable administrator_login_password {
  type = string
}
variable sql_server_version {}
variable storage_endpoint {}
variable storage_account_access_key {}
variable storage_account_access_key_is_secondary {
    type = bool
    default = true
}
variable retention_in_days {}
//variable "rule_names" {
//  type = list(string)
//}
//variable "start_ip" {
//  type = list(string)
//}
//variable "end_ip" {
//  type = list(string)
//}
//variable "sql_server_name" {}
##################################################################################
# LOCALS
##################################################################################

locals {
  env_name = lower(terraform.workspace)
}