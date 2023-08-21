########## To assign organisation role to iam member or vice versa ###########

module "organization-iam-bindings" {
  source        = "../modules/iam"
  organizations = [""]
  mode          = "authoritative"

  bindings = {
    "roles/resourcemanager.organizationAdmin" = [
      "group:my-group@my-org.com",
    ]
    "roles/resourcemanager.folderAdmin" = [
      "group:my-group@my-org.com",
    ]
    "roles/resourcemanager.projectCreator" = [
      "group:my-group@my-org.com",
    ]
    "roles/billing.user" = [
      "group:my-group@my-org.com",
    ]
    "roles/iam.organizationRoleAdmin" = [
      "group:my-group@my-org.com",
    ]
    "roles/orgpolicy.policyAdmin" = [
      "group:my-group@my-org.com",
    ]
    "roles/securitycenter.admin" = [
      "group:my-group@my-org.com",
    ]
    "roles/cloudsupport.admin" = [
      "group:my-group@my-org.com",
    ]

  }
  #   conditional_bindings = [
  #     {
  #       role = "roles/editor"
  #       title = "expires_after_2019_12_31"
  #       description = "Expiring at midnight of 2019-12-31"
  #       expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
  #       members = ["user:my-user@my-org.com"]
  #     }
  #   ]
}