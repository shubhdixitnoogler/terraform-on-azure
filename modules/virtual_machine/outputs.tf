output "ids" {
  description = "Map of virtual machine IDs by key"
  value       = { for key, vm in azurerm_linux_virtual_machine.vm : key => vm.id }
}
