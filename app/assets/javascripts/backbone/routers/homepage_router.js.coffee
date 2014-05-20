class ShimellMadden.Routers.HomepageRouter extends Backbone.Router
  initialize: (options) ->
    @items = new ShimellMadden.Collections.ItemsCollection()
    @items.reset options.items

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
    $("body").removeClass("home");
    @view = new ShimellMadden.Views.Items.IndexView(items: @items)
    $("#items").html(@view.render().el)