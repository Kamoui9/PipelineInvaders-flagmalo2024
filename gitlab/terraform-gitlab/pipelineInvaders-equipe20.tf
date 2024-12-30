### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project20" {
  name                   = "pipelineInvaders20"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group20.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group20" {
  name        = "pipelineInvaders_group20"
  path        = "pipelineInvaders_group20"
  description = "ekip 20"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret20" {
  project           = gitlab_project.pipelineInvaders_project20.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe20_membership" {
  group_id     = gitlab_group.pipelineInvaders_group20.id
  user_id      = gitlab_user.equipe20.id
  access_level = "developer"
}