### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project21" {
  name                   = "pipelineInvaders21"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group21.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group21" {
  name        = "pipelineInvaders_group21"
  path        = "pipelineInvaders_group21"
  description = "ekip 21"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret21" {
  project           = gitlab_project.pipelineInvaders_project21.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe21_membership" {
  group_id     = gitlab_group.pipelineInvaders_group21.id
  user_id      = gitlab_user.equipe21.id
  access_level = "developer"
}