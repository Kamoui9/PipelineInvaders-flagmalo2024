### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project18" {
  name                   = "pipelineInvaders18"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group18.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group18" {
  name        = "pipelineInvaders_group18"
  path        = "pipelineInvaders_group18"
  description = "ekip 18"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret18" {
  project           = gitlab_project.pipelineInvaders_project18.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe18_membership" {
  group_id     = gitlab_group.pipelineInvaders_group18.id
  user_id      = gitlab_user.equipe18.id
  access_level = "developer"
}