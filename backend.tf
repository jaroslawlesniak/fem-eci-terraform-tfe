terraform {
  cloud {
    organization = "fem-organization"

    workspaces {
      name = "fem-eci-workspace"
    }
  }
}