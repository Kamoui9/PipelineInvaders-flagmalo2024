### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project11" {
  name                   = "pipelineInvaders11"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group11.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group11" {
  name        = "pipelineInvaders_group11"
  path        = "pipelineInvaders_group11"
  description = "ekip 11"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret11" {
  project           = gitlab_project.pipelineInvaders_project11.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe11_membership" {
  group_id     = gitlab_group.pipelineInvaders_group11.id
  user_id      = gitlab_user.equipe11.id
  access_level = "developer"
}