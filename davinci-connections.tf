
resource "davinci_connection" "flowConnector" {
  name           = "Flow"
  connector_id   = "flowConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "nodeConnector" {
  name           = "Node"
  connector_id   = "nodeConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "pingOneMfaConnector" {
  name           = "PingOne MFA"
  connector_id   = "pingOneMfaConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "challengeConnector" {
  name           = "Challenge"
  connector_id   = "challengeConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "notificationsConnector" {
  name           = "PingOne Notifications"
  connector_id   = "notificationsConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "devicePolicyConnector" {
  name           = "Device Policy"
  connector_id   = "devicePolicyConnector"
  environment_id = resource.pingone_environment.my_environment.id
}
