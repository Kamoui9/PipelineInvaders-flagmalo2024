### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project23" {
  name                   = "pipelineInvaders23"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group23.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group23" {
  name        = "pipelineInvaders_group23"
  path        = "pipelineInvaders_group23"
  description = "ekip 23"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret23" {
  project           = gitlab_project.pipelineInvaders_project23.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe23_membership" {
  group_id     = gitlab_group.pipelineInvaders_group23.id
  user_id      = gitlab_user.equipe23.id
  access_level = "developer"
}