class ShimellMadden.Models.Homepage extends Backbone.Model
  paramRoot: 'homepage'

class ShimellMadden.Collections.HomepageCollection extends Backbone.Collection
  model: ShimellMadden.Models.Homepage
  url: '/homepage'
