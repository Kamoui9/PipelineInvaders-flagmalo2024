### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project13" {
  name                   = "pipelineInvaders13"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group13.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group13" {
  name        = "pipelineInvaders_group13"
  path        = "pipelineInvaders_group13"
  description = "ekip 13"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret13" {
  project           = gitlab_project.pipelineInvaders_project13.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe13_membership" {
  group_id     = gitlab_group.pipelineInvaders_group13.id
  user_id      = gitlab_user.equipe13.id
  access_level = "developer"
}