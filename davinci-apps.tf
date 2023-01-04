
# All other data/resources can occur after the first DV read action

resource "davinci_application" "Documentation" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = true
    values {
      allowed_grants                = ["authorizationCode"]
      allowed_scopes                = ["openid", "profile"]
      enabled                       = true
      enforce_signed_request_openid = false
    }
  }
  policies {
    name = "New Policy"
    policy_flows {
      flow_id    = resource.davinci_flow._Documentation.flow_id
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
}
# All other data/resources can occur after the first DV read action

resource "davinci_application" "Packages" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = true
    values {
      allowed_grants                = ["authorizationCode"]
      allowed_scopes                = ["openid", "profile"]
      enabled                       = true
      enforce_signed_request_openid = false
    }
  }
  policies {
    name = "CIAM Passwordless"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-000-Demo.flow_id
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
}