variable "organization" {
  type = list(string)
  description = "ID of an organization"
}

variable "org_admin_group" {
  type = string
  description = "Name of organization admin group"
}

variable "billing_admin_group" {
  type = string
  description = "Name of Billing admin group"
}

variable "network_admin_group" {
  type = string
  description = "Name of Network admin group"
}

variable "logging_admin_group" {
  type = string
  description = "Name of logging admin group"
}

variable "monitoring_admin_group" {
  type = string
  description = "Name of Monitoring admin group"
}

variable "security_admin_group" {
  type = string
  description = "Name of Security admin group"
}
