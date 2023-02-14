
# Ping Identity

terraform {
  required_providers {
    pingone = {
      source  = "pingidentity/pingone"
      version = "~> 0.8.0"
    }
    davinci = {
      source  = "pingidentity/davinci"
      version = "~> 0.1.0"
    }
  }
}

# PingOne Provider

provider "pingone" {
  client_id                    = var.admin_client_id
  client_secret                = var.admin_client_secret
  environment_id               = var.admin_environment_id
  region                       = var.region
  force_delete_production_type = false
}

# DaVinci Provider

provider "davinci" {
  username       = var.admin_username
  password       = var.admin_password
  region         = var.region
  environment_id = var.admin_environment_id
}

# Create Worker App for DaVinci Connections

resource "pingone_application" "davinci_connection_worker_app" {
  environment_id = pingone_environment.my_environment.id
  name           = "DaVinci Connections MFA Notification Worker App"
  enabled        = true

  oidc_options {
    type                        = "WORKER"
    grant_types                 = ["CLIENT_CREDENTIALS"]
    token_endpoint_authn_method = "CLIENT_SECRET_BASIC"
  }
}


resource "pingone_application_role_assignment" "app_connection_identity_admin_role" {
  environment_id       = pingone_environment.my_environment.id
  application_id       = pingone_application.davinci_connection_worker_app.id
  role_id              = data.pingone_role.identity_data_admin.id
  scope_environment_id = pingone_environment.my_environment.id
}

resource "pingone_application_role_assignment" "app_connection_environment_admin_role" {
  environment_id       = pingone_environment.my_environment.id
  application_id       = pingone_application.davinci_connection_worker_app.id
  role_id              = data.pingone_role.environment_admin.id
  scope_environment_id = pingone_environment.my_environment.id
}

# Find user in environment based on username

data "pingone_user" "admin_user" {
  environment_id = var.admin_environment_id
  username       = var.admin_username
}

# Find environment based on admin_environment_id

data "pingone_environment" "admin_environment" {
  environment_id = var.admin_environment_id
}

# Find license based on license name

data "pingone_licenses" "internal_license" {
  organization_id = data.pingone_environment.admin_environment.organization_id

  data_filter {
    name = "name"
    values = [
      var.license_name
    ]
  }

  data_filter {
    name   = "status"
    values = ["ACTIVE"]
  }
}


# Create PingOne environment

resource "pingone_environment" "my_environment" {
  name        = var.target_environment_name
  description = var.target_environment_description
  type        = var.target_environment_type
  license_id  = data.pingone_licenses.internal_license.ids[0]

  default_population {
    name        = var.target_population_name
    description = var.target_population_description
  }

  service {
    type = "SSO"
  }

  service {
    type = "MFA"
  }

  service {
    type = "DaVinci"
  }
}

# MFA Settings

resource "pingone_mfa_settings" "mfa_settings" {
  environment_id = pingone_environment.my_environment.id

  pairing {
    max_allowed_devices = 15
    pairing_key_format  = "ALPHANUMERIC"
  }

  # Upon 5 failed authentications, account locked out for 10 min (600 sec)
  lockout {
    failure_count    = 5
    duration_seconds = 600
  }
}

# MFA Policy

resource "pingone_mfa_policy" "mfa_policy" {
  environment_id   = pingone_environment.my_environment.id
  name             = "My MFA policy"
  device_selection = "DEFAULT_TO_FIRST"

  mobile {
    enabled = false
  }

  totp {
    enabled = true
  }

  security_key {
    enabled = true
  }

  platform {
    enabled = true
  }

  sms {
    enabled = true
  }

  voice {
    enabled = true
  }

  email {
    enabled = true
  }
}

# Create Notification Template for Email and SME

resource "pingone_notification_template_content" "magic-link-notification-email" {
  environment_id = pingone_environment.my_environment.id
  template_name  = "general"
  locale         = "en"

  variant = "magic-link"

  email {
    subject = "Passwordless Magic Link"
    body    = <<EOT
<p>Click on the following to login.</p>
<p><a href='$${magicLink}'>Magic Link</a></p>

<p>You may also cut/paste the link: $${magicLink}</p>
EOT
  }
}

resource "pingone_notification_template_content" "magic-link-notification-sms" {
  environment_id = pingone_environment.my_environment.id
  template_name  = "general"
  locale         = "en"

  variant = "magic-link"


  sms {
    content = "Magic Link - $${magicLink}"
  }
}

# Find the PingOne Roles

data "pingone_role" "identity_data_admin" {
  name = "Identity Data Admin"
}

data "pingone_role" "environment_admin" {
  name = "Environment Admin"
}

data "pingone_role" "client_app_developer" {
  name = "Client Application Developer"
}

# Assign the client application developer role to user to allow for access to
# the Worker App which is assigned to the same role as a product of adding the
# new pingone environment

resource "pingone_role_assignment_user" "client_app_developer_admin" {
  environment_id       = var.admin_environment_id
  user_id              = data.pingone_user.admin_user.id
  role_id              = data.pingone_role.client_app_developer.id
  scope_environment_id = resource.pingone_environment.my_environment.id
}

# Assign the admin/environment user to the role

resource "pingone_role_assignment_user" "admin_sso" {
  environment_id       = var.admin_environment_id
  user_id              = data.pingone_user.admin_user.id
  role_id              = data.pingone_role.identity_data_admin.id
  scope_environment_id = resource.pingone_environment.my_environment.id
}

resource "pingone_role_assignment_user" "environment_admin_sso" {
  environment_id       = var.admin_environment_id
  user_id              = data.pingone_user.admin_user.id
  role_id              = data.pingone_role.environment_admin.id
  scope_environment_id = resource.pingone_environment.my_environment.id
}

// This simple read action is used to as a precursor to all other data/resources
data "davinci_connections" "read_all" {
  environment_id = resource.pingone_role_assignment_user.environment_admin_sso.scope_environment_id

  depends_on = [
    resource.pingone_role_assignment_user.admin_sso
  ]
}
