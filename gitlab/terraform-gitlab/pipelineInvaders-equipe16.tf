### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project16" {
  name                   = "pipelineInvaders16"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group16.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group16" {
  name        = "pipelineInvaders_group16"
  path        = "pipelineInvaders_group16"
  description = "ekip 16"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret16" {
  project           = gitlab_project.pipelineInvaders_project16.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe16_membership" {
  group_id     = gitlab_group.pipelineInvaders_group16.id
  user_id      = gitlab_user.equipe16.id
  access_level = "developer"
}