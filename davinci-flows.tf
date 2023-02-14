
resource "davinci_flow" "flow-CIAM-Passwordless-000-Demo" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-000-Demo.json")
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-001-Registration.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-001-Registration.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-001-AuthN.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-001-AuthN.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-001-Profile-Management.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-001-Profile-Management.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Variables.connections)[0].id
    name = tolist(data.davinci_connections.Variables.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-001-AuthN" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-001-AuthN.json")
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-AuthN-OTP.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-AuthN-OTP.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-AuthN-FIDO.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-AuthN-FIDO.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-AuthN-MagicLink.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-AuthN-MagicLink.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-001-Manage-Devices" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-001-Manage-Devices.json")
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-Register-OTP.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-Register-OTP.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-Register-FIDO-Mobile.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-Register-FIDO-Mobile.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-003-Register-FIDO-Device.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-003-Register-FIDO-Device.name
  }
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-Edit-Device.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-Edit-Device.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-001-Profile-Management" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-001-Profile-Management.json")
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-001-Manage-Devices.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-001-Manage-Devices.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-001-Registration" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-001-Registration.json")
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-002-Register-OTP.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-002-Register-OTP.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-002-AuthN-FIDO" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-002-AuthN-FIDO.json")

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Challenge.id
    name = resource.davinci_connection.Challenge.name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Variables.connections)[0].id
    name = tolist(data.davinci_connections.Variables.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-002-AuthN-MagicLink" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-002-AuthN-MagicLink.json")

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Challenge.id
    name = resource.davinci_connection.Challenge.name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-Notifications.id
    name = resource.davinci_connection.PingOne-Notifications.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-002-AuthN-OTP" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-002-AuthN-OTP.json")

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-002-Edit-Device" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-002-Edit-Device.json")

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-002-Register-FIDO-Mobile" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-002-Register-FIDO-Mobile.json")
  subflow_link {
    id   = resource.davinci_flow.flow-CIAM-Passwordless-003-Register-FIDO-Device.id
    name = resource.davinci_flow.flow-CIAM-Passwordless-003-Register-FIDO-Device.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Challenge.id
    name = resource.davinci_connection.Challenge.name
  }

  connection_link {
    id   = resource.davinci_connection.Flow.id
    name = resource.davinci_connection.Flow.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Variables.connections)[0].id
    name = tolist(data.davinci_connections.Variables.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-002-Register-OTP" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-002-Register-OTP.json")

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.PingOne.connections)[0].id
    name = tolist(data.davinci_connections.PingOne.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Variables.connections)[0].id
    name = tolist(data.davinci_connections.Variables.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "flow-CIAM-Passwordless-003-Register-FIDO-Device" {
  environment_id = resource.pingone_role_assignment_user.admin_sso.scope_environment_id
  flow_json      = file("${path.module}/flows/flow-CIAM-Passwordless-003-Register-FIDO-Device.json")

  connection_link {
    id   = tolist(data.davinci_connections.annotationConnector.connections)[0].id
    name = tolist(data.davinci_connections.annotationConnector.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Device-Policy.id
    name = resource.davinci_connection.Device-Policy.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Error-Customize.connections)[0].id
    name = tolist(data.davinci_connections.Error-Customize.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Functions.connections)[0].id
    name = tolist(data.davinci_connections.Functions.connections)[0].name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Http.connections)[0].id
    name = tolist(data.davinci_connections.Http.connections)[0].name
  }

  connection_link {
    id   = resource.davinci_connection.Node.id
    name = resource.davinci_connection.Node.name
  }

  connection_link {
    id   = resource.davinci_connection.PingOne-MFA.id
    name = resource.davinci_connection.PingOne-MFA.name
  }

  connection_link {
    id   = tolist(data.davinci_connections.Variables.connections)[0].id
    name = tolist(data.davinci_connections.Variables.connections)[0].name
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}
