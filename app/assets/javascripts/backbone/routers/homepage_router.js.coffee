class ShimellMadden.Routers.HomepageRouter extends Backbone.Router
  initialize: (options) ->
    @items = new ShimellMadden.Collections.ItemsCollection()
    @collections = new ShimellMadden.Collections.CollectionsCollection()
    @projects = new ShimellMadden.Collections.CollectionsCollection()

    @items.reset options.items

  routes:
    "index"           : "index"
    "about"           : "about"
    "items"	          : "items"
    "items/:id"       : "item"
    "archive"         : "archive"
    "collections"     : "collections"
    "collections/:id" : "collection"
    "projects"        : "projects"
    "projects/:id"    : "project"
    ".*"              : "index"


  index: ->
    $("body").addClass("home");
    # get items from server, then render
    @items.fetch().done( () =>
      @homepageItems = new ShimellMadden.Collections.ItemsCollection(@items.where({ "homepage" : true }))
      @view = new ShimellMadden.Views.Homepage.IndexView(items: @homepageItems)
      $("#items").html(@view.render().el)

      @nav = new ShimellMadden.Views.Shared.NavView()
      $("#navigation").html(@nav.render().el)    

      # resize/centre carousel images
      backgroundResize();
    );

  items: () ->
    $("body").removeClass("home");
    @items.fetch().done( () =>
      @view = new ShimellMadden.Views.Items.IndexView(items: @items)
      $("#items").html(@view.render().el)

      if !@nav 
        @nav = new ShimellMadden.Views.Shared.NavView()
        $("#navigation").html(@nav.render().el)

      @nav.setCurrent('Items')

      backgroundResize();
    )

  collections: () ->
    $("body").removeClass("home");
    @collections.fetch().done( () =>
      @view = new ShimellMadden.Views.Collections.IndexView(collections: @collections)
      $("#items").html(@view.render().el)
      
      if !@nav 
        @nav = new ShimellMadden.Views.Shared.NavView()
        $("#navigation").html(@nav.render().el)

      @nav.setCurrent('Collections')
      # resize/centre carousel images
      backgroundResize();
    )

  collection: (id) ->
    $("body").removeClass("home");
    @collections.fetch().done( () =>
      view = new ShimellMadden.Views.Collections.ShowView(model: @collections.get(id))
      $("#items").html(view.render().el)
      
      if !@nav 
        @nav = new ShimellMadden.Views.Shared.NavView()
        $("#navigation").html(@nav.render().el)

      @nav.setCurrent('Collections')

      # resize/centre carousel images
      backgroundResize();
    )

  archive: ->
    $("body").removeClass("home");
    @view = new ShimellMadden.Views.Archive.IndexView(items: @items)
    $("#items").html(@view.render().el)

    if !@nav 
      @nav = new ShimellMadden.Views.Shared.NavView()
      $("#navigation").html(@nav.render().el)

    @nav.setCurrent('Archive')

  projects: ->
    $("body").removeClass("home");
    @view = new ShimellMadden.Views.Projects.IndexView(items: @items)
    $("#items").html(@view.render().el)

    if !@nav 
      @nav = new ShimellMadden.Views.Shared.NavView()
      $("#navigation").html(@nav.render().el)

    @nav.setCurrent('Projects')

  project: (id) ->
    $("body").removeClass("home");
    @projects.fetch().done( () =>
      view = new ShimellMadden.Views.Projects.ShowView(model: @projects.get(id))
      $("#items").html(view.render().el)
      
      if !@nav 
        @nav = new ShimellMadden.Views.Shared.NavView()
        $("#navigation").html(@nav.render().el)
      @nav.setCurrent('Project')
    )

  about: ->
    $("body").removeClass("home");
    @view = new ShimellMadden.Views.Pages.ShowView()
    $("#items").html(@view.render().el)