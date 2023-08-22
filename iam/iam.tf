########## To assign organisation role to iam member or vice versa ###########
########## To assign organisation role to iam member or vice versa ###########
locals {
  group1 = var.org_admin_group
  group2 = var.billing_admin_group
  group3 = var.network_admin_group
  group4 = var.logging_admin_group
  group5 = var.monitoring_admin_group
  group6 = var.security_admin_group
}

####### Organization admin group role binding ########

module "organization-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/resourcemanager.organizationAdmin" = [
      local.group1,
    ]
    "roles/resourcemanager.folderAdmin" = [
      local.group1,
    ]
    "roles/resourcemanager.projectCreator" = [
      local.group1,
    ]
    "roles/billing.user" = [
      local.group1,
    ]
    "roles/iam.organizationRoleAdmin" = [
      local.group1,
    ]
    "roles/orgpolicy.policyAdmin" = [
      local.group1,
    ]
    "roles/securitycenter.admin" = [
      local.group1,
    ]
    "roles/cloudsupport.admin" = [
      local.group1,
    ]

  }
}

####### Billing admin group role binding ########

module "billing-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/billing.admin" = [
      local.group2,
    ]
    "roles/billing.creator" = [
      local.group2,
    ]
    "roles/resourcemanager.organizationViewer" = [
      local.group2,
    ]

  }
}

####### Network admin group role binding ########

module "network-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/compute.networkAdmin" = [
      local.group3,
    ]
    "roles/compute.xpnAdmin" = [
      local.group3,
    ]
    "roles/compute.securityAdmin" = [
      local.group3,
    ]
    "roles/resourcemanager.folderViewer" = [
      local.group3,
    ]

  }
}

####### Logging admin group role binding ########

module "logging-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/logging.admin" = [
      local.group4,
    ]
  }
}

####### Monitoring admin group role binding ########

module "Monitoring-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/monitoring.admin" = [
      local.group5,
    ]
  }
}

####### Security admin group role binding ########

module "Monitoring-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/orgpolicy.policyAdmin" = [
      local.group6,
    ]
    "roles/iam.securityReviewer" = [
      local.group6,
    ]
    "roles/iam.organizationRoleViewer" = [
      local.group6,
    ]
    "roles/securitycenter.admin" = [
      local.group6,
    ]
    "roles/resourcemanager.folderIamAdmin" = [
      local.group6,
    ]
    "roles/logging.privateLogViewer" = [
      local.group6,
    ]
    "roles/logging.configWriter" = [
      local.group6,
    ]
    "roles/container.viewer" = [
      local.group6,
    ]
    "roles/compute.viewer" = [
      local.group6,
    ]
  }
}