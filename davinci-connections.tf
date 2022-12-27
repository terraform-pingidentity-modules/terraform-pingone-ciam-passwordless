
resource "davinci_connection" "flowConnector" {
  name           = "flowConnector"
  connector_id   = "flowConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "nodeConnector" {
  name           = "nodeConnector"
  connector_id   = "nodeConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "pingOneMfaConnector" {
  name           = "pingOneMfaConnector"
  connector_id   = "pingOneMfaConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "challengeConnector" {
  name           = "challengeConnector"
  connector_id   = "challengeConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "notificationsConnector" {
  name           = "notificationsConnector"
  connector_id   = "notificationsConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "devicePolicyConnector" {
  name           = "devicePolicyConnector"
  connector_id   = "devicePolicyConnector"
  environment_id = resource.pingone_environment.my_environment.id
}
