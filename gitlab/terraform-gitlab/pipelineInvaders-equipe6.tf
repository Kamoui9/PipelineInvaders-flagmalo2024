### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project6" {
  name                   = "pipelineInvaders6"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group6.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group6" {
  name        = "pipelineInvaders_group6"
  path        = "pipelineInvaders_group6"
  description = "ekip 6"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret6" {
  project           = gitlab_project.pipelineInvaders_project6.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe6_membership" {
  group_id     = gitlab_group.pipelineInvaders_group6.id
  user_id      = gitlab_user.equipe6.id
  access_level = "developer"
}