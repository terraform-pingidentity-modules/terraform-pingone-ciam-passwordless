
resource "davinci_variable" "attestationValue" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "attestationValue"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "CIAM-Passwordless-companyName" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "CIAM-Passwordless-companyName"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "deviceNickname" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "deviceNickname"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "deviceTypesArray" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "deviceTypesArray"
  context        = "flowInstance"
  description    = ""
  type           = "object"
}

resource "davinci_variable" "displayAsSubflow" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "displayAsSubflow"
  context        = "flowInstance"
  description    = ""
  type           = "boolean"
}

resource "davinci_variable" "emailAddress" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "emailAddress"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "errorCode" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "errorCode"
  context        = "flowInstance"
  description    = ""
  type           = "number"
}

resource "davinci_variable" "errorMessage" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "errorMessage"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "errorMsg" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "errorMsg"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "fidoButtonState" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoButtonState"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "FIDOOrigin" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "FIDOOrigin"
  context        = "flowInstance"
  description    = "https://bank.ciam.sandbox.ciamsgo.com"
  type           = "string"
}

resource "davinci_variable" "FIDORelyingParty" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "FIDORelyingParty"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "fidoRelyingPartyIds" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoRelyingPartyIds"
  context        = "company"
  description    = ""
  type           = "object"
}

resource "davinci_variable" "id" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "id"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "is1stDeviceWebAuthnCompatible" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "is1stDeviceWebAuthnCompatible"
  context        = "flowInstance"
  description    = "Whether the 1st device can make use of the WebAuthn API"
  type           = "boolean"
}

resource "davinci_variable" "logoUrl" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "logoUrl"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "origin" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "origin"
  context        = "flowInstance"
  description    = "FIDO2 origin"
  type           = "string"
}

resource "davinci_variable" "originURL" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "originURL"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1AssertionId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1AssertionId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1DeviceAuthenticationStatus" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1DeviceAuthenticationStatus"
  context        = "flowInstance"
  description    = "Defines the authentication action the user should preform"
  type           = "string"
}

resource "davinci_variable" "p1DeviceId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1DeviceId"
  context        = "flowInstance"
  description    = "local device ID variable to manage the most current user device being used"
  type           = "string"
}

resource "davinci_variable" "p1RiskEvaluationStatus" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1RiskEvaluationStatus"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1RiskLow" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1RiskLow"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1RiskMedium" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1RiskMedium"
  context        = "flowInstance"
  description    = "Medium Risk"
  type           = "string"
}

resource "davinci_variable" "p1UserId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1UserId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "pingOneRiskPolicyId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "pingOneRiskPolicyId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "populationId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "populationId"
  context        = "flowInstance"
  description    = "a8abf169-0ba3-42fb-a3e0-451d2b064ce7"
  type           = "string"
}

resource "davinci_variable" "publicKeyCredentialCreationOptions" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "publicKeyCredentialCreationOptions"
  context        = "flowInstance"
  description    = "Options for creating a public key to use for FIDO2"
  type           = "string"
}

resource "davinci_variable" "publicKeyCredentialRequestOptions" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "publicKeyCredentialRequestOptions"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "registrationPopulationId" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "registrationPopulationId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "relyingParty" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "relyingParty"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "relyingPartyID" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "relyingPartyID"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "teleportReturnValue" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "teleportReturnValue"
  context        = "flowInstance"
  description    = ""
  type           = "boolean"
}

resource "davinci_variable" "userAction" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "userAction"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "userID" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "userID"
  context        = "flowInstance"
  description    = "PingOne user id"
  type           = "string"
}

resource "davinci_variable" "verifyCode" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "verifyCode"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}
