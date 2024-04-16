terraform {
  cloud {
    organization = "my-birla-org"

    workspaces {
      name = "testing"
    }
  }
}
