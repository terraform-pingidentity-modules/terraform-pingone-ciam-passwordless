# Ping Identity CIAM Passwordless Package Solution

This module provides a set of workflows to implment a CIAM Passwordless experiance using PingOne MFA including:

* Passkey Authentication
* Applicaiton Based Auth (TOTP)
* Email/Mobile OTP
* MagicLink

## Usage

```hcl
module "pingone-ciam-passwordless" {
  source = "terraform-pingidentity-modules/ciam-passwordless/pingone"

  admin_client_id                = "<<admin-client-guid>>"
  admin_client_secret            = "<<admin-secret>>"
  admin_environment_id           = "<<admin-env-guid>>"
  license_name                   = "<<license-name>>>"
  region                         = "NorthAmerica"
  admin_username                 = "bob@example.com"
  admin_password                 = "secret"
  target_environment_name        = "pingone-ciam-passwordless"
  target_environment_description = "CIAM Passwordless Envrionment"
  target_environment_type        = "SANDBOX"
  target_population_name         = "My Population"
  target_population_description  = "My Population Description"
}
```
