variable "authorization_flow" {
  type        = string
  description = "Flow used when authorizing this provider"
}

variable "external_host" {
  type        = string
  description = "The external URL you will access the application at"
}

variable "invalidation_flow" {
  type        = string
  description = "Flow used ending the session from a provider"
}

variable "name" {
  type        = string
  description = "Name of the provider"
}

variable "access_token_validity" {
  type        = string
  default     = "minutes=10"
  description = "How long access tokens are valid for"
}

variable "authentication_flow" {
  type        = string
  default     = null
  description = "Flow used for authentication when the associated application is accessed by an un-authenticated user"
}

variable "basic_auth_enabled" {
  type        = bool
  default     = false
  description = "Set a custom HTTP-Basic authentication header based on values from authentik"
}

variable "basic_auth_password_attribute" {
  type        = string
  default     = null
  description = "User/Group attribute used for the password part of the HTTP-Basic header"
}

variable "basic_auth_username_attribute" {
  type        = string
  default     = null
  description = "User/Group attribute used for the username part of the HTTP-Basic header"
}

variable "cookie_domain" {
  type        = string
  default     = null
  description = "The domain you wish the authentication to be valid for"
}

variable "intercept_header_auth" {
  type        = bool
  default     = true
  description = "When enabled, this provider will intercept the authorization header and authenticate requests based on it's value"
}

variable "internal_host" {
  type        = string
  default     = null
  description = "Upstream host taht the requests are forwarded to"
}

variable "internal_host_ssl_validation" {
  type        = bool
  default     = true
  description = "Validate SSL certificates of upstream servers"
}

variable "jwt_federation_providers" {
  type        = list(number)
  default     = []
  description = "JWTs issued by any of the configured providers can be used to authenticate on behalf of this provider"
}

variable "jwt_federation_sources" {
  type        = list(string)
  default     = []
  description = "JWTs issued by keys configured in any of the selected sources can be used to authenticate on behalf of this provider"
}

variable "mode" {
  type        = string
  default     = "proxy"
  description = "Enable support for ForwardAuth in Traefik and Nginx auth_request"

  validation {
    condition     = contains(["proxy", "forward_single", "forward_domain"], var.mode)
    error_message = "Valid values are proxy, forward_single, forward_domain"
  }
}

variable "property_mappings" {
  type        = list(string)
  default     = []
  description = "List of properties to pass information to external applications"
}

variable "refresh_token_validity" {
  type        = string
  default     = "days=30"
  description = "How long refresh tokens are valid for"
}

variable "skip_path_regex" {
  type        = string
  default     = null
  description = "Regular expressions for which authentication is not required"
}
