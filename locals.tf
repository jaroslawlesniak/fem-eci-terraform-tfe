locals {
  project = {
    "fem-eci-project" = {
      description = "Some overriden description"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description = "Some workspace description"
      execution_mode = "local"
      project_id = module.project["fem-eci-project"].id
    }
  }
}