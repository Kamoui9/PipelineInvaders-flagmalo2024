### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project1" {
  name                   = "pipelineInvaders1"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group1.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group1" {
  name        = "pipelineInvaders_group1"
  path        = "pipelineInvaders_group1"
  description = "ekip 1"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret1" {
  project           = gitlab_project.pipelineInvaders_project1.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe1_membership" {
  group_id     = gitlab_group.pipelineInvaders_group1.id
  user_id      = gitlab_user.equipe1.id
  access_level = "developer"
}