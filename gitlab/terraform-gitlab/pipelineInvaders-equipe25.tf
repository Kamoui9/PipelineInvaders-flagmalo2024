### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project25" {
  name                   = "pipelineInvaders25"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group25.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group25" {
  name        = "pipelineInvaders_group25"
  path        = "pipelineInvaders_group25"
  description = "ekip 25"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret25" {
  project           = gitlab_project.pipelineInvaders_project25.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe25_membership" {
  group_id     = gitlab_group.pipelineInvaders_group25.id
  user_id      = gitlab_user.equipe25.id
  access_level = "developer"
}