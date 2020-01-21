terraform {
  backend "remote" {
    organization = "sirspen"

    workspaces {
      name = "Example-Workspace"
    }
  }
}
