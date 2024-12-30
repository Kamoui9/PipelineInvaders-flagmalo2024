### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project9" {
  name                   = "pipelineInvaders9"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group9.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group9" {
  name        = "pipelineInvaders_group9"
  path        = "pipelineInvaders_group9"
  description = "ekip 9"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret9" {
  project           = gitlab_project.pipelineInvaders_project9.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe9_membership" {
  group_id     = gitlab_group.pipelineInvaders_group9.id
  user_id      = gitlab_user.equipe9.id
  access_level = "developer"
}