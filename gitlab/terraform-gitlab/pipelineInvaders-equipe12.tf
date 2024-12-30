### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project12" {
  name                   = "pipelineInvaders12"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group12.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group12" {
  name        = "pipelineInvaders_group12"
  path        = "pipelineInvaders_group12"
  description = "ekip 12"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret12" {
  project           = gitlab_project.pipelineInvaders_project12.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe12_membership" {
  group_id     = gitlab_group.pipelineInvaders_group12.id
  user_id      = gitlab_user.equipe12.id
  access_level = "developer"
}