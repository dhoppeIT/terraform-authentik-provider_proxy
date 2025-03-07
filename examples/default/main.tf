module "authentik_provider_proxy" {
  source = "../../"

  name               = "example-provider-proxy"
  external_host      = "https://example.com"
  authorization_flow = data.authentik_flow.authorization_flow.id
  invalidation_flow  = data.authentik_flow.invalidation_flow.id

  internal_host = "https://localhost"
}
