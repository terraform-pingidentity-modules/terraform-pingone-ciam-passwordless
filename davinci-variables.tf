
resource "davinci_variable" "attestationValue_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "attestationValue"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "CIAM-Passwordless-companyName_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "CIAM-Passwordless-companyName"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "deviceNickname_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "deviceNickname"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "deviceTypesArray_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "deviceTypesArray"
  context        = "flowInstance"
  description    = ""
  type           = "object"
}

resource "davinci_variable" "displayAsSubflow_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "displayAsSubflow"
  context        = "flowInstance"
  description    = ""
  type           = "boolean"
}

resource "davinci_variable" "emailAddress_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "emailAddress"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "errorCode_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "errorCode"
  context        = "flowInstance"
  description    = ""
  type           = "number"
}

resource "davinci_variable" "errorMessage_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "errorMessage"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "errorMsg_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "errorMsg"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "fidoButtonState_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoButtonState"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "FIDOOrigin_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "FIDOOrigin"
  context        = "flowInstance"
  description    = "https://bank.ciam.sandbox.ciamsgo.com"
  type           = "string"
}

resource "davinci_variable" "FIDORelyingParty_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "FIDORelyingParty"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "fidoRelyingPartyIds_company" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "fidoRelyingPartyIds"
  context        = "company"
  description    = ""
  type           = "object"
}

resource "davinci_variable" "id_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "id"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "is1stDeviceWebAuthnCompatible_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "is1stDeviceWebAuthnCompatible"
  context        = "flowInstance"
  description    = "Whether the 1st device can make use of the WebAuthn API"
  type           = "boolean"
}

resource "davinci_variable" "logoUrl_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "logoUrl"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "origin_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "origin"
  context        = "flowInstance"
  description    = "FIDO2 origin"
  type           = "string"
}

resource "davinci_variable" "originURL_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "originURL"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1AssertionId_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1AssertionId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1DeviceAuthenticationStatus_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1DeviceAuthenticationStatus"
  context        = "flowInstance"
  description    = "Defines the authentication action the user should preform"
  type           = "string"
}

resource "davinci_variable" "p1DeviceId_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1DeviceId"
  context        = "flowInstance"
  description    = "local device ID variable to manage the most current user device being used"
  type           = "string"
}

resource "davinci_variable" "p1RiskEvaluationStatus_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1RiskEvaluationStatus"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1RiskLow_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1RiskLow"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "p1RiskMedium_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1RiskMedium"
  context        = "flowInstance"
  description    = "Medium Risk"
  type           = "string"
}

resource "davinci_variable" "p1UserId_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "p1UserId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "pingOneRiskPolicyId_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "pingOneRiskPolicyId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "populationId_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "populationId"
  context        = "flowInstance"
  description    = "a8abf169-0ba3-42fb-a3e0-451d2b064ce7"
  type           = "string"
}

resource "davinci_variable" "publicKeyCredentialCreationOptions_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "publicKeyCredentialCreationOptions"
  context        = "flowInstance"
  description    = "Options for creating a public key to use for FIDO2"
  type           = "string"
}

resource "davinci_variable" "publicKeyCredentialRequestOptions_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "publicKeyCredentialRequestOptions"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "registrationPopulationId_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "registrationPopulationId"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "relyingParty_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "relyingParty"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "relyingPartyID_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "relyingPartyID"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "teleportReturnValue_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "teleportReturnValue"
  context        = "flowInstance"
  description    = ""
  type           = "boolean"
}

resource "davinci_variable" "userAction_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "userAction"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}

resource "davinci_variable" "userID_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "userID"
  context        = "flowInstance"
  description    = "PingOne user id"
  type           = "string"
}

resource "davinci_variable" "verifyCode_flowInstance" {
  environment_id = resource.pingone_environment.my_environment.id
  name           = "verifyCode"
  context        = "flowInstance"
  description    = ""
  type           = "string"
}
