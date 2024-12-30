### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project17" {
  name                   = "pipelineInvaders17"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group17.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group17" {
  name        = "pipelineInvaders_group17"
  path        = "pipelineInvaders_group17"
  description = "ekip 17"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret17" {
  project           = gitlab_project.pipelineInvaders_project17.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe17_membership" {
  group_id     = gitlab_group.pipelineInvaders_group17.id
  user_id      = gitlab_user.equipe17.id
  access_level = "developer"
}