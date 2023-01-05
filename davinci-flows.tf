
resource "davinci_flow" "_Documentation" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/_Documentation.json")
  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-000-Demo" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-000-Demo.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-Registration.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-Registration.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-AuthN.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-AuthN.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-Profile-Management.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-Profile-Management.flow_name
  }
  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-001-AuthN" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-001-AuthN.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-AuthN-OTP.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-AuthN-OTP.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-AuthN-FIDO.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-AuthN-FIDO.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-AuthN-MagicLink.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-AuthN-MagicLink.flow_name
  }
  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-001-Manage-Devices" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-001-Manage-Devices.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-Register-OTP.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-Register-OTP.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-Register-FIDO-Mobile.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-Register-FIDO-Mobile.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-003-Register-FIDO-Device.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-003-Register-FIDO-Device.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-Edit-Device.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-Edit-Device.flow_name
  }
  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-001-Profile-Management" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-001-Profile-Management.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-Manage-Devices.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-Manage-Devices.flow_name
  }
  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-001-Registration" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-001-Registration.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-002-Register-OTP.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-002-Register-OTP.flow_name
  }
  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-002-AuthN-FIDO" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-002-AuthN-FIDO.json")
  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.challengeConnector.id
    connection_name = davinci_connection.challengeConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-002-AuthN-MagicLink" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-002-AuthN-MagicLink.json")
  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.challengeConnector.id
    connection_name = davinci_connection.challengeConnector.name
  }

  connections {
    connection_id   = davinci_connection.notificationsConnector.id
    connection_name = davinci_connection.notificationsConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-002-AuthN-OTP" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-002-AuthN-OTP.json")
  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-002-Edit-Device" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-002-Edit-Device.json")
  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-002-Register-FIDO-Mobile" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-002-Register-FIDO-Mobile.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-003-Register-FIDO-Device.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-003-Register-FIDO-Device.flow_name
  }
  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.challengeConnector.id
    connection_name = davinci_connection.challengeConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-002-Register-OTP" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-002-Register-OTP.json")
  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "CIAM-Passwordless-003-Register-FIDO-Device" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/CIAM-Passwordless-003-Register-FIDO-Device.json")
  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  connections {
    connection_id   = davinci_connection.pingOneMfaConnector.id
    connection_name = davinci_connection.pingOneMfaConnector.name
  }

  connections {
    connection_id   = davinci_connection.devicePolicyConnector.id
    connection_name = davinci_connection.devicePolicyConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "importfrombuild-package" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/importfrombuild-package.json")
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-Registration.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-Registration.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-AuthN.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-AuthN.flow_name
  }
  subflows {
    subflow_id   = resource.davinci_flow.CIAM-Passwordless-001-Profile-Management.flow_id
    subflow_name = resource.davinci_flow.CIAM-Passwordless-001-Profile-Management.flow_name
  }
  connections {
    connection_id   = davinci_connection.flowConnector.id
    connection_name = davinci_connection.flowConnector.name
  }

  connections {
    connection_id   = davinci_connection.nodeConnector.id
    connection_name = davinci_connection.nodeConnector.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}
