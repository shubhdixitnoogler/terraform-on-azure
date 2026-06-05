resource "azurerm_storage_account" "stg" {
  for_each = var.st

  name                     = each.value.name
  resource_group_name      = var.resource_group_names[each.value.resource_group_key]
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
