terraform {
  required_version = "~> 1.6.0"

  backend "s3" {
    bucket = "mdekort.tfstate"
    key    = "mdekort-nl.tfstate"
    region = "eu-west-1"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 3.0"
    }
  }
}

provider "cloudflare" {
  api_token = data.terraform_remote_state.cloudsetup.outputs.api_token_mdekort_nl
}
