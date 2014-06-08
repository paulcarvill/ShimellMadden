class ShimellMadden.Routers.HomepageRouter extends Backbone.Router
  initialize: (options) ->
    @items = new ShimellMadden.Collections.ItemsCollection()
    @collections = new ShimellMadden.Collections.CollectionsCollection()
    @items.reset options.items

  routes:
    "index"           : "index"
    "items"	          : "items"
    "collections"     : "collections"
    "collections/:id" : "collection"
    "projects"        : "projects"
    ".*"              : "index"


  index: ->
    # get items from server, then render
    @items.fetch().done( () =>
      @homepageItems = new ShimellMadden.Collections.ItemsCollection(@items.where({ "homepage" : true }))
      @view = new ShimellMadden.Views.Homepage.IndexView(items: @homepageItems)
      $("#items").html(@view.render().el)
      # fullscreenFix();
      backgroundResize();
    );

  items: ->
    $("body").removeClass("home");
    @items.fetch().done( () =>
      @view = new ShimellMadden.Views.Items.IndexView(items: @items)
      $("#items").html(@view.render().el)
      @nav = new ShimellMadden.Views.NavView()
      $("header").html(@nav.render().el)
    )

  collections: ->
    $("body").removeClass("home");
    @collections.fetch().done( () =>
      @view = new ShimellMadden.Views.Collections.IndexView(collections: @collections)
      $("#items").html(@view.render().el)
      @nav = new ShimellMadden.Views.NavView()
      $("header").html(@nav.render().el)
    )

  collection: (id) ->
    $("body").removeClass("home");
    @collections.fetch().done( () =>
      view = new ShimellMadden.Views.Collections.ShowView(model: @collections.get(id))
      $("#items").html(view.render().el)
      @nav = new ShimellMadden.Views.NavView()
      $("header").html(@nav.render().el)
    )

  projects: ->
    $("body").removeClass("home");
    @view = new ShimellMadden.Views.Projects.IndexView(items: @items)
    $("#items").html(@view.render().el)