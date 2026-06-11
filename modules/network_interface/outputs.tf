output "ids" {
  description = "Map of network interface IDs by key"
  value       = { for key, nic in azurerm_network_interface.nic : key => nic.id }
}
