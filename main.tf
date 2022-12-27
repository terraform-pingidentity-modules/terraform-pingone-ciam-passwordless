

# Ping Identity

terraform {
  required_providers {
    pingone = {
      source  = "pingidentity/pingone"
      version = "~> 0.1"
    }
    davinci = {
      source  = "pingidentity/davinci"
      version = "~> 0.0.6"
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


# Find the PingOne Role to assign to admin user

data "pingone_role" "identity_data_admin" {
  name = "Identity Data Admin"
  depends_on = [
    pingone_environment.my_environment
  ]
}


# Assign the admin user to the role

resource "pingone_role_assignment_user" "admin_sso" {
  environment_id       = var.admin_environment_id
  user_id              = data.pingone_user.admin_user.id
  role_id              = data.pingone_role.identity_data_admin.id
  scope_environment_id = resource.pingone_environment.my_environment.id
}
