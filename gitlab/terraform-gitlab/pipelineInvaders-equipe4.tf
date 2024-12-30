### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project4" {
  name                   = "pipelineInvaders4"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group4.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group4" {
  name        = "pipelineInvaders_group4"
  path        = "pipelineInvaders_group4"
  description = "ekip 4"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret4" {
  project           = gitlab_project.pipelineInvaders_project4.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe4_membership" {
  group_id     = gitlab_group.pipelineInvaders_group4.id
  user_id      = gitlab_user.equipe4.id
  access_level = "developer"
}