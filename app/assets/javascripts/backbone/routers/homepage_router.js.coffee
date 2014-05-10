class ShimellMadden.Routers.HomepageRouter extends Backbone.Router
  initialize: (options) ->
    @items = new ShimellMadden.Collections.ItemsCollection()

    @items.reset options.items

  routes:
    "index"    : "index"
    "items"	   : "items"
    ".*"        : "index"

  index: ->
    @view = new ShimellMadden.Views.Homepage.IndexView(items: @items)
    $("#items").html(@view.render().el)

  items: ->
  	console.log('shoe items init')