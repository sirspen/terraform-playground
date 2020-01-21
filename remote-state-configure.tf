terraform {
  # backend "remote" {
  #   organization = "sirspen"
  #
  #   workspaces {
  #     name = "Example-Workspace"
  #   }
  # }

  backend "s3" {
    bucket = "test-spencer-terraform-remote-state"
    key = "state/example.tfstate"
    region = "eu-west-1"
  }
}
