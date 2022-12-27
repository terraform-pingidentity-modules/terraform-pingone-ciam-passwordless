
// All other data/resources can occur after the first DV read action
resource "davinci_application" "_README" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "_README"
    policy_flows {
      flow_id    = resource.davinci_flow._README.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-000-Demo" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-000-Demo"
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-001-AuthN" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-001-AuthN"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-001-AuthN.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-001-Manage-Devices" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-001-Manage-Devices"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-001-Manage-Devices.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-001-Profile-Management" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-001-Profile-Management"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-001-Profile-Management.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-001-Registration" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-001-Registration"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-001-Registration.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-002-AuthN-FIDO" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-002-AuthN-FIDO"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-002-AuthN-FIDO.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-002-AuthN-MagicLink" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-002-AuthN-MagicLink"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-002-AuthN-MagicLink.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-002-AuthN-OTP" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-002-AuthN-OTP"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-002-AuthN-OTP.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-002-Edit-Device" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-002-Edit-Device"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-002-Edit-Device.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-002-Register-FIDO-Mobile" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-002-Register-FIDO-Mobile"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-002-Register-FIDO-Mobile.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-002-Register-OTP" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-002-Register-OTP"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-002-Register-OTP.flow_id
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
// All other data/resources can occur after the first DV read action
resource "davinci_application" "CIAM-Passwordless-003-Register-FIDO-Device" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  name           = "solutions.pingidentity.cloud"
  oauth {
    enabled = false
    values {
      enabled = false
    }
  }
  policies {
    name = "CIAM-Passwordless-003-Register-FIDO-Device"
    policy_flows {
      flow_id    = resource.davinci_flow.CIAM-Passwordless-003-Register-FIDO-Device.flow_id
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