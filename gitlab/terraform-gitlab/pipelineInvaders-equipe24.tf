### pipelineInvaders.tf ###
## global
resource "gitlab_project" "pipelineInvaders_project24" {
  name                   = "pipelineInvaders24"
  description            = "h t t p s : / / t . l y / u A T C X"
  namespace_id           = gitlab_group.pipelineInvaders_group24.id
  auto_devops_enabled    = false
  visibility_level = "public"
}

## group
resource "gitlab_group" "pipelineInvaders_group24" {
  name        = "pipelineInvaders_group24"
  path        = "pipelineInvaders_group24"
  description = "ekip 24"
  visibility_level = "public"
}

## vars & secrets
resource "gitlab_project_variable" "pipelineInvaders_secret24" {
  project           = gitlab_project.pipelineInvaders_project24.id
  key               = "FLAG"
  value             = "maskedIsNotProtected"
  protected         = false
  masked            = true
  environment_scope = "*"
}

## memberships
resource "gitlab_group_membership" "equipe24_membership" {
  group_id     = gitlab_group.pipelineInvaders_group24.id
  user_id      = gitlab_user.equipe24.id
  access_level = "developer"
}