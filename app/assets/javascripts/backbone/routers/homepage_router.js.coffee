class ShimellMadden.Routers.HomepageRouter extends Backbone.Router
  initialize: (options) ->
    @items = new ShimellMadden.Collections.ItemsCollection()

  routes:
    "index"    : "index"
    "items"	   : "items"
    ".*"        : "index"

  index: ->
    # get items from server, then render
    @items.fetch().done( () =>
      @view = new ShimellMadden.Views.Homepage.IndexView(items: @items)
      $("#items").html(@view.render().el)
    );
    

  items: ->
    console.log(@items)
    @view = new ShimellMadden.Views.Items.IndexView(items: @items)
    $("#items").html(@view.render().el)