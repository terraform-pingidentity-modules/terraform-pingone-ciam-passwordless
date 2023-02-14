
data "davinci_connections" "annotationConnector" {
  environment_id = resource.pingone_environment.my_environment.id
  connector_ids  = ["annotationConnector"]

  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "davinci_connections" "Error-Customize" {
  environment_id = resource.pingone_environment.my_environment.id
  connector_ids  = ["errorConnector"]

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_connection" "Flow" {
  name           = "Flow"
  connector_id   = "flowConnector"
  environment_id = resource.pingone_environment.my_environment.id
  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "davinci_connections" "Functions" {
  environment_id = resource.pingone_environment.my_environment.id
  connector_ids  = ["functionsConnector"]

  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "davinci_connections" "Http" {
  environment_id = resource.pingone_environment.my_environment.id
  connector_ids  = ["httpConnector"]

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_connection" "Node" {
  name           = "Node"
  connector_id   = "nodeConnector"
  environment_id = resource.pingone_environment.my_environment.id
  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "davinci_connections" "PingOne" {
  environment_id = resource.pingone_environment.my_environment.id
  connector_ids  = ["pingOneSSOConnector"]

  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "davinci_connections" "Variables" {
  environment_id = resource.pingone_environment.my_environment.id
  connector_ids  = ["variablesConnector"]

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_connection" "PingOne-MFA" {
  name           = "PingOne MFA"
  connector_id   = "pingOneMfaConnector"
  environment_id = resource.pingone_environment.my_environment.id
  property {
    name  = "envId"
    value = resource.pingone_environment.my_environment.id
  }

  property {
    name  = "clientId"
    value = resource.pingone_application.davinci_connection_worker_app.oidc_options[0].client_id
  }

  property {
    name  = "clientSecret"
    value = resource.pingone_application.davinci_connection_worker_app.oidc_options[0].client_secret
  }

  property {
    name  = "policyId"
    value = resource.pingone_mfa_policy.mfa_policy.id
  }

  property {
    name = "region"
    value = coalesce(
      resource.pingone_environment.my_environment.region == "Europe" ? "EU" : "",
      resource.pingone_environment.my_environment.region == "AsiaPacific" ? "AP" : "",
      resource.pingone_environment.my_environment.region == "Canada" ? "CA" : "",
      resource.pingone_environment.my_environment.region == "NorthAmerica" ? "NA" : "",
    )
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_connection" "Challenge" {
  name           = "Challenge"
  connector_id   = "challengeConnector"
  environment_id = resource.pingone_environment.my_environment.id
  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_connection" "PingOne-Notifications" {
  name           = "PingOne Notifications"
  connector_id   = "notificationsConnector"
  environment_id = resource.pingone_environment.my_environment.id
  property {
    name  = "envId"
    value = resource.pingone_environment.my_environment.id
  }

  property {
    name  = "clientId"
    value = resource.pingone_application.davinci_connection_worker_app.oidc_options[0].client_id
  }

  property {
    name  = "clientSecret"
    value = resource.pingone_application.davinci_connection_worker_app.oidc_options[0].client_secret
  }

  property {
    name = "region"
    value = coalesce(
      resource.pingone_environment.my_environment.region == "Europe" ? "EU" : "",
      resource.pingone_environment.my_environment.region == "AsiaPacific" ? "AP" : "",
      resource.pingone_environment.my_environment.region == "Canada" ? "CA" : "",
      resource.pingone_environment.my_environment.region == "NorthAmerica" ? "NA" : "",
    )
  }

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_connection" "Device-Policy" {
  name           = "Device Policy"
  connector_id   = "devicePolicyConnector"
  environment_id = resource.pingone_environment.my_environment.id
  depends_on = [
    data.davinci_connections.read_all
  ]
}
