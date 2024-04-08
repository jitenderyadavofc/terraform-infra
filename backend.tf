#terraform {
#  backend "remote" {
#    hostname     = "app.terraform.io"
#    organization = "my-birla-org"

#    workspaces {
#      prefix = "len-infra-"
#    }
#  }
#}

terraform {
  cloud {
    organization = "my-birla-org"

    workspaces {
      name = "athenix"
    }
  }
}
