
resource "davinci_variable" "attestationValue" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "attestationValue"
  context        = "flowInstance"
  description    = ""
  type           = "string"

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "deviceNickname" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "deviceNickname"
  context        = "flowInstance"
  description    = ""
  type           = "string"

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "emailAddress" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "emailAddress"
  context        = "flowInstance"
  description    = ""
  type           = "string"

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "fidoButtonState" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoButtonState"
  context        = "flowInstance"
  description    = ""
  type           = "string"

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "fidoRelyingPartyIds" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoRelyingPartyIds"
  context        = "company"
  description    = ""
  type           = "object"

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "p1UserId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1UserId"
  context        = "flowInstance"
  description    = ""
  type           = "string"

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "verifyCode" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "verifyCode"
  context        = "flowInstance"
  description    = ""
  type           = "string"

  depends_on = [
    data.davinci_connections.read_all
  ]
}
