### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project5" {
  name                   = "pipelineInvaders5"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group5.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group5" {
  name        = "pipelineInvaders_group5"
  path        = "pipelineInvaders_group5"
  description = "ekip 5"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret5" {
  project           = gitlab_project.pipelineInvaders_project5.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe5_membership" {
  group_id     = gitlab_group.pipelineInvaders_group5.id
  user_id      = gitlab_user.equipe5.id
  access_level = "developer"
}