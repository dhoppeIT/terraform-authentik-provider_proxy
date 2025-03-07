resource "authentik_provider_proxy" "this" {
  authorization_flow = var.authorization_flow
  external_host      = var.external_host
  invalidation_flow  = var.invalidation_flow
  name               = var.name

  access_token_validity         = var.access_token_validity
  authentication_flow           = var.authentication_flow
  basic_auth_enabled            = var.basic_auth_enabled
  basic_auth_password_attribute = var.basic_auth_password_attribute
  basic_auth_username_attribute = var.basic_auth_username_attribute
  cookie_domain                 = var.cookie_domain
  intercept_header_auth         = var.intercept_header_auth
  internal_host                 = var.internal_host
  internal_host_ssl_validation  = var.internal_host_ssl_validation
  jwt_federation_providers      = var.jwt_federation_providers
  jwt_federation_sources        = var.jwt_federation_sources
  mode                          = var.mode
  property_mappings             = var.property_mappings
  refresh_token_validity        = var.refresh_token_validity
  skip_path_regex               = var.skip_path_regex
}
