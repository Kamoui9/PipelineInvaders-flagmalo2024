### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project8" {
  name                   = "pipelineInvaders8"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group8.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group8" {
  name        = "pipelineInvaders_group8"
  path        = "pipelineInvaders_group8"
  description = "ekip 8"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret8" {
  project           = gitlab_project.pipelineInvaders_project8.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe8_membership" {
  group_id     = gitlab_group.pipelineInvaders_group8.id
  user_id      = gitlab_user.equipe8.id
  access_level = "developer"
}