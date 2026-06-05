output "names" {
  description = "Map of resource group names by key"
  value       = { for key, rg in azurerm_resource_group.rgs : key => rg.name }
}
