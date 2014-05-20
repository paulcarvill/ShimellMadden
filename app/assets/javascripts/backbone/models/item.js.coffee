class ShimellMadden.Models.Item extends Backbone.Model
  paramRoot: 'item'

  defaults:
    name: null
    description: null

class ShimellMadden.Collections.ItemsCollection extends Backbone.PageableCollection
  model: ShimellMadden.Models.Item
  url: '/items'
  mode: "client"
  state: {
    pageSize: 6
  },
