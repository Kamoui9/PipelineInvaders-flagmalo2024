### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project7" {
  name                   = "pipelineInvaders7"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group7.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group7" {
  name        = "pipelineInvaders_group7"
  path        = "pipelineInvaders_group7"
  description = "ekip 7"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret7" {
  project           = gitlab_project.pipelineInvaders_project7.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe7_membership" {
  group_id     = gitlab_group.pipelineInvaders_group7.id
  user_id      = gitlab_user.equipe7.id
  access_level = "developer"
}