### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project22" {
  name                   = "pipelineInvaders22"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group22.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group22" {
  name        = "pipelineInvaders_group22"
  path        = "pipelineInvaders_group22"
  description = "ekip 22"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret22" {
  project           = gitlab_project.pipelineInvaders_project22.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe22_membership" {
  group_id     = gitlab_group.pipelineInvaders_group22.id
  user_id      = gitlab_user.equipe22.id
  access_level = "developer"
}