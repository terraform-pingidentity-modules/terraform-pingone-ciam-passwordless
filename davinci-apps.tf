
# All other data/resources can occur after the first DV read action

resource "davinci_application" "app-CIAM-Passwordless-App" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "CIAM Passwordless App"
  oauth {
    enabled = true
    values {
      allowed_grants                = ["authorizationCode"]
      allowed_scopes                = ["openid", "profile"]
      enabled                       = true
      enforce_signed_request_openid = false
    }
  }
  policy {
    name = "CIAM Passwordless"
    policy_flow {
      flow_id    = resource.davinci_flow.flow-CIAM-Passwordless-000-Demo.id
      version_id = -1
      weight     = 100
    }
  }
  saml {
    values {
      enabled                = false
      enforce_signed_request = true
    }
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}