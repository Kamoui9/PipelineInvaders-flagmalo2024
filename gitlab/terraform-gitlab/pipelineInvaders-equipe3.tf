### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project3" {
  name                   = "pipelineInvaders3"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group3.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group3" {
  name        = "pipelineInvaders_group3"
  path        = "pipelineInvaders_group3"
  description = "ekip 3"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret3" {
  project           = gitlab_project.pipelineInvaders_project3.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe3_membership" {
  group_id     = gitlab_group.pipelineInvaders_group3.id
  user_id      = gitlab_user.equipe3.id
  access_level = "developer"
}