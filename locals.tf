locals {
  project = {
    "fem-eci-project" = {
      description = "Some overriden description"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description = "Some workspace description"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }

    "fem-eci-github" = {
      description = "Some github description"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
    }
  }
}