class ShimellMadden.Models.Collection extends Backbone.Model
  paramRoot: 'collection'

  defaults:
    name: null
    description: null

class ShimellMadden.Collections.CollectionsCollection extends Backbone.Collection
  model: ShimellMadden.Models.Collection
  url: '/collections'
