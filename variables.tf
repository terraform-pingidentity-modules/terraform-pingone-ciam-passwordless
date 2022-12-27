variable "admin_client_id" {
  description = "PingOne Admin Environment Worker App Client ID"
  type        = string
}

variable "admin_client_secret" {
  description = "PingOne Admin Environment Worker App Client Secret"
  type        = string
}

variable "admin_environment_id" {
  description = "PingOne Admin Environment ID"
  type        = string
}

variable "license_name" {
  description = "PingOne Account License Name"
  default     = "INTERNAL"
  type        = string
}

variable "region" {
  description = "PingOne Admin Environment Region"
  default     = "NorthAmerica"
  type        = string
}

variable "admin_username" {
  description = "PingOne Admin Environment Username"
  type        = string
}

variable "admin_password" {
  description = "PingOne Admin Environment Password"
  type        = string
}

variable "target_environment_name" {
  description = "PingOne Target Environment Name"
  type        = string
}

variable "target_environment_description" {
  description = "PingOne Target Environment Description"
  type        = string
}

variable "target_environment_type" {
  description = "PingOne Target Environment Type (SANDBOX, PRODUCTION)"
  default     = "SANDBOX"
  type        = string
}

variable "target_population_name" {
  description = "PingOne Target Environment Population Name"
  default     = "My Population"
  type        = string
}

variable "target_population_description" {
  description = "PingOne Target Environment Population Description"
  default     = "My Population Description"
  type        = string
}

