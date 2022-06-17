resource "netlify_site" "mdekort-nl" {
  name = "mdekort-nl"

  repo {
    repo_branch = "master"
    dir         = "src"
    provider    = "github"
    repo_path   = "melvyndekort/mdekort-nl"
  }
}
