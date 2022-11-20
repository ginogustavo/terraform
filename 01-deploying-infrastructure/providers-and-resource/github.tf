terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.9.0"
    }
  }
}

provider "github" {
  # Configuration options
  token = "123"
}

resource "github_repository" "example" {
  name       = "terraform-repo"
  visibility = "private"

}
