### gitOverHere.tf ###
## global
resource "gitlab_project" "gitOverHere_project" {
  name                   = "gitOverHere"
  description            = "Il est dit que même les champions laissent parfois des traces de leurs erreurs. Seuls ceux qui savent manipuler le temps et explorer les ombres peuvent espérer retrouver ce qui a été perdu."
  namespace_id           = gitlab_group.gitOverHere_group.id
  auto_devops_enabled    = false
  visibility_level       = "public"
}

## group
resource "gitlab_group" "gitOverHere_group" {
  name             = "gitOverHere_group"
  path             = "gitOverHere_group"
  description      = "gitOverHere_group"
  visibility_level = "public"
}

## memberships


resource "gitlab_project_membership" "gitOverHere_membership1" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe1.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership2" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe2.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership3" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe3.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership4" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe4.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership5" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe5.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership6" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe6.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership7" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe7.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership8" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe8.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership9" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe9.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership10" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe10.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership11" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe11.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership12" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe12.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership13" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe13.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership14" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe14.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership15" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe15.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership16" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe16.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership17" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe17.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership18" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe18.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership19" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe19.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership20" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe20.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership21" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe21.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership22" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe22.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership23" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe23.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership24" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe24.id
  access_level = "guest"
}

resource "gitlab_project_membership" "gitOverHere_membership25" {
  project   = gitlab_project.gitOverHere_project.id
  user_id      = gitlab_user.equipe25.id
  access_level = "guest"
}
