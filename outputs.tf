output "client_id" {
  description = "The Client ID of the provider"
  value       = authentik_provider_proxy.this.client_id
}

output "id" {
  description = "The ID of this resource"
  value       = authentik_provider_proxy.this.id
}
