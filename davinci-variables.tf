
resource "davinci_variable" "var-attestationValue" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "attestationValue"
  context        = "flowInstance"
  description    = ""
  type           = "string"
  value          = ""
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "var-deviceNickname" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "deviceNickname"
  context        = "flowInstance"
  description    = ""
  type           = "string"
  value          = ""
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "var-emailAddress" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "emailAddress"
  context        = "flowInstance"
  description    = ""
  type           = "string"
  value          = ""
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "var-fidoButtonState" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoButtonState"
  context        = "flowInstance"
  description    = ""
  type           = "string"
  value          = ""
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "var-fidoRelyingPartyIds" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoRelyingPartyIds"
  context        = "company"
  description    = ""
  type           = "object"
  value          = "{\"mobile\":\"auth.pingone.com\",\"desktop\":\"auth.pingone.com\"}"
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "var-p1UserId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1UserId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
  value          = ""
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_variable" "var-verifyCode" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "verifyCode"
  context        = "flowInstance"
  description    = ""
  type           = "string"
  value          = ""
  mutable        = true

  depends_on = [
    data.davinci_connections.read_all
  ]
}
