terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {}

resource "github_repository" "dot-github" {
  name               = ".github"
  description        = "A repository for managing the state of my GitHub estate."
  allow_merge_commit = false
  allow_rebase_merge = false
  allow_squash_merge = true
  has_downloads      = false
  has_issues         = false
  has_projects       = false
  has_wiki           = false
}
