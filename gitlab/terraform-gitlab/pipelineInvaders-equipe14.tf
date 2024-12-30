### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project14" {
  name                   = "pipelineInvaders14"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group14.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group14" {
  name        = "pipelineInvaders_group14"
  path        = "pipelineInvaders_group14"
  description = "ekip 14"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret14" {
  project           = gitlab_project.pipelineInvaders_project14.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe14_membership" {
  group_id     = gitlab_group.pipelineInvaders_group14.id
  user_id      = gitlab_user.equipe14.id
  access_level = "developer"
}