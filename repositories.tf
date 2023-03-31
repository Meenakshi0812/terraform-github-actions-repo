resource "github_repository" "terraform-github-actions-repo" {
  name        = "terraform-github-actions-repo"
  description = "terraform-github-actions-repo testing "

  visibility = "public"
auto_init   = true

}
resource "github_branch" "development" {
  repository = github_repository.terraform-github-actions-repo.name
  branch     = "development"
}
resource "github_branch_default" "default"{
  repository = github_repository.terraform-github-actions-repo.name
  branch     = github_branch.development.branch
}

