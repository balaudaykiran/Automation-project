output "N01605345_Rg_name" {
  value = module.rgroup_N01605345.N01605345_Rg_name
}

output "N01605345_Rg_location" {
  value = module.rgroup_N01605345.N01605345_Rg_location
}

output "virtual_network_name" {
  value = module.network_N01605345.virtual_network_name
}

output "virtual_network_address_space" {
  value = module.network_N01605345.virtual_network_address_space
}

output "N01605345_subnet" {
  value = module.network_N01605345.N01605345_subnet
}

output "subnet_id" {
  value = module.network_N01605345.subnet_id
}

output "log_analytics_workspace_name" {
  value = module.common_N01605345.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common_N01605345.recovery_services_vault_name
}

output "storage_account_name" {
  value = module.common_N01605345.storage_account_name
}

output "storage_account-primary_blob_endpoint" {
  value = module.common_N01605345.storage_account-primary_blob_endpoint
}

output "linux_vm_hostname" {
  value = module.vmlinux_N01605345.vm-linux.hostnames
}

output "linux_vm_fqdn" {
  value = module.vmlinux_N01605345.linux_vm_fqdn
}

output "linux_private_ip_address" {
  value = module.vmlinux_N01605345.linux_private_ip_address
}

output "linux_public_ip_address" {
  value = module.vmlinux_N01605345.linux_public_ip_address
}

output "vmlinux-nic-ids" {
  value = module.vmlinux_N01605345.vm-linux.nic-ids
}

output "vmwindows-hostname" {
  value = module.vmwindows_N01605345.windows
}

output "vmwindows-fqdn" {
  value = module.vmwindows_N01605345.windows_vm_fqdn
}

output "vmwindows-private-ip" {
  value = module.vmwindows_N01605345.windows_private_ip_address
}

output "vmwindows-public-ip" {
  value = module.vmwindows_N01605345.windows_public_ip_address
}

output "vmwindows-nic-ids" {
  value = module.vmwindows_N01605345.windows_nic_id
}

output "datadisk_name" {
  value = module.datadisk_N01605345.name_datadisk
}
output "loadbalancer-public-ip" {
  value = module.loadbalancer_N01605345.loadbalancer-public-ip
}

output "loadbalancer-name" {
  value = module.loadbalancer_N01605345.loadbalancer-name
}

