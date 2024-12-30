### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project2" {
  name                   = "pipelineInvaders2"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group2.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group2" {
  name        = "pipelineInvaders_group2"
  path        = "pipelineInvaders_group2"
  description = "ekip 2"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret2" {
  project           = gitlab_project.pipelineInvaders_project2.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe2_membership" {
  group_id     = gitlab_group.pipelineInvaders_group2.id
  user_id      = gitlab_user.equipe2.id
  access_level = "developer"
}