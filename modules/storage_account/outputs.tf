output "storage_account_ids" {
  description = "Map of storage account IDs by key"
  value       = { for key, stg in azurerm_storage_account.stg : key => stg.id }
}
