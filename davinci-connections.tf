
resource "davinci_connection" "flowConnector" {
  name           = "undefined"
  connector_id   = "flowConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "nodeConnector" {
  name           = "undefined"
  connector_id   = "nodeConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "pingOneMfaConnector" {
  name           = "undefined"
  connector_id   = "pingOneMfaConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "challengeConnector" {
  name           = "undefined"
  connector_id   = "challengeConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "notificationsConnector" {
  name           = "undefined"
  connector_id   = "notificationsConnector"
  environment_id = resource.pingone_environment.my_environment.id
}

resource "davinci_connection" "devicePolicyConnector" {
  name           = "undefined"
  connector_id   = "devicePolicyConnector"
  environment_id = resource.pingone_environment.my_environment.id
}
