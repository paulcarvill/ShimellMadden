class ShimellMadden.Models.Project extends Backbone.Model
  paramRoot: 'project'

  defaults:
    name: null
    description: null

class ShimellMadden.Collections.ProjectsCollection extends Backbone.Collection
  model: ShimellMadden.Models.Project
  url: '/projects'
