### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project10" {
  name                   = "pipelineInvaders10"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group10.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group10" {
  name        = "pipelineInvaders_group10"
  path        = "pipelineInvaders_group10"
  description = "ekip 10"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret10" {
  project           = gitlab_project.pipelineInvaders_project10.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe10_membership" {
  group_id     = gitlab_group.pipelineInvaders_group10.id
  user_id      = gitlab_user.equipe10.id
  access_level = "developer"
}