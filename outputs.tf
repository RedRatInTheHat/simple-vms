output "vm_ips" {
  value       = [
    for vm in yandex_compute_instance.vm: { 
        "public_ip" : vm.network_interface.0.nat_ip_address, 
        "private_ip": vm.network_interface.0.ip_address
     }
  ]
  description = "Private and public ips of created machines"
}