# terraform-authentik-provider_proxy

Terraform module to manage the following Twingate resources:

* authentik_provider_proxy

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "authentik_provider_proxy" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-provider-proxy/local"
  version = "1.0.0"

  name               = "example-provider-proxy"
  external_host      = "https://example.com"
  authorization_flow = "8dd2dda7-5624-4f42-8984-04139ce50236"
  invalidation_flow  = "742a8bb5-3981-44ab-949f-dada3e92daf9"

  internal_host = "https://localhost"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2025.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2025.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_provider_proxy.this](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/provider_proxy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_token_validity"></a> [access\_token\_validity](#input\_access\_token\_validity) | How long access tokens are valid for | `string` | `"minutes=10"` | no |
| <a name="input_authentication_flow"></a> [authentication\_flow](#input\_authentication\_flow) | Flow used for authentication when the associated application is accessed by an un-authenticated user | `string` | `null` | no |
| <a name="input_authorization_flow"></a> [authorization\_flow](#input\_authorization\_flow) | Flow used when authorizing this provider | `string` | n/a | yes |
| <a name="input_basic_auth_enabled"></a> [basic\_auth\_enabled](#input\_basic\_auth\_enabled) | Set a custom HTTP-Basic authentication header based on values from authentik | `bool` | `false` | no |
| <a name="input_basic_auth_password_attribute"></a> [basic\_auth\_password\_attribute](#input\_basic\_auth\_password\_attribute) | User/Group attribute used for the password part of the HTTP-Basic header | `string` | `null` | no |
| <a name="input_basic_auth_username_attribute"></a> [basic\_auth\_username\_attribute](#input\_basic\_auth\_username\_attribute) | User/Group attribute used for the username part of the HTTP-Basic header | `string` | `null` | no |
| <a name="input_cookie_domain"></a> [cookie\_domain](#input\_cookie\_domain) | The domain you wish the authentication to be valid for | `string` | `null` | no |
| <a name="input_external_host"></a> [external\_host](#input\_external\_host) | The external URL you will access the application at | `string` | n/a | yes |
| <a name="input_intercept_header_auth"></a> [intercept\_header\_auth](#input\_intercept\_header\_auth) | When enabled, this provider will intercept the authorization header and authenticate requests based on it's value | `bool` | `true` | no |
| <a name="input_internal_host"></a> [internal\_host](#input\_internal\_host) | Upstream host taht the requests are forwarded to | `string` | `null` | no |
| <a name="input_internal_host_ssl_validation"></a> [internal\_host\_ssl\_validation](#input\_internal\_host\_ssl\_validation) | Validate SSL certificates of upstream servers | `bool` | `true` | no |
| <a name="input_invalidation_flow"></a> [invalidation\_flow](#input\_invalidation\_flow) | Flow used ending the session from a provider | `string` | n/a | yes |
| <a name="input_jwt_federation_providers"></a> [jwt\_federation\_providers](#input\_jwt\_federation\_providers) | JWTs issued by any of the configured providers can be used to authenticate on behalf of this provider | `list(number)` | `[]` | no |
| <a name="input_jwt_federation_sources"></a> [jwt\_federation\_sources](#input\_jwt\_federation\_sources) | JWTs issued by keys configured in any of the selected sources can be used to authenticate on behalf of this provider | `list(string)` | `[]` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | Enable support for ForwardAuth in Traefik and Nginx auth\_request | `string` | `"proxy"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the provider | `string` | n/a | yes |
| <a name="input_property_mappings"></a> [property\_mappings](#input\_property\_mappings) | List of properties to pass information to external applications | `list(string)` | `[]` | no |
| <a name="input_refresh_token_validity"></a> [refresh\_token\_validity](#input\_refresh\_token\_validity) | How long refresh tokens are valid for | `string` | `"days=30"` | no |
| <a name="input_skip_path_regex"></a> [skip\_path\_regex](#input\_skip\_path\_regex) | Regular expressions for which authentication is not required | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | The Client ID of the provider |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
