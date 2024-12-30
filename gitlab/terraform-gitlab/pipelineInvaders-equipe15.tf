### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project15" {
  name                   = "pipelineInvaders15"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group15.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group15" {
  name        = "pipelineInvaders_group15"
  path        = "pipelineInvaders_group15"
  description = "ekip 15"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret15" {
  project           = gitlab_project.pipelineInvaders_project15.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe15_membership" {
  group_id     = gitlab_group.pipelineInvaders_group15.id
  user_id      = gitlab_user.equipe15.id
  access_level = "developer"
}