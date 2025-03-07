output "client_id" {
  description = "The Client ID of the provider"
  value       = module.authentik_provider_proxy.client_id
}

output "id" {
  description = "The ID of this resource"
  value       = module.authentik_provider_proxy.id
}
