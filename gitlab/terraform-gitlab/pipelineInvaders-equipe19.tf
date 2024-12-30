### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project19" {
  name                   = "pipelineInvaders19"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group19.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group19" {
  name        = "pipelineInvaders_group19"
  path        = "pipelineInvaders_group19"
  description = "ekip 19"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret19" {
  project           = gitlab_project.pipelineInvaders_project19.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe19_membership" {
  group_id     = gitlab_group.pipelineInvaders_group19.id
  user_id      = gitlab_user.equipe19.id
  access_level = "developer"
}