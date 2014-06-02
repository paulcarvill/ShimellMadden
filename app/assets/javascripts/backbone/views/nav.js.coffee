ShimellMadden.Views ||= {}

class ShimellMadden.Views.NavView extends Backbone.View
  template: JST["backbone/templates/shared/nav"]


# <a id="home" href="/">Home</a>
# <a id="items" href="/items">Items</a>
# <a id="collections" href="/collections">Collections</a>
# <a id="archive" href="/archive">Archive</a>
# <a id="projects" href="/projects">Projects</a>
# <a id="info" href="/about">Information</a>
# <a id="shop" href="/shop">Shop</a>

  events: {
    'click #nav-home'        : 'home',
    'click #nav-items'       : 'items',
    'click #nav-collections' : 'collections',
    'click #nav-archive'     : 'archive',
    'click #nav-projects'    : 'projects',
    'click #nav-info'        : 'info',
    'click #nav-shop'        : 'shop',
    'click .nav-header'      : 'revealNav'
  }

  initialize: () ->
    @revealed = false;
    
  render: =>
    $(@el).html(@template())
    return this

  home: () ->
  	window.router.navigate("index", {trigger: true})

  items: () ->
  	window.router.navigate("items", {trigger: true})

  collections: (e) ->
  	e.preventDefault()
  	window.router.navigate("collections", {trigger: true})

  projects: () ->
  	window.router.navigate("projects", {trigger: true})

  archive: () ->
  	window.router.navigate("archive", {trigger: true})

  info: () ->
  	window.router.navigate("info", {trigger: true})

  shop: () ->
  	window.router.navigate("shop", {trigger: true})

  revealNav: () ->
    if @revealed
      $('nav').toggleClass('woop');
      @revealed = false
    else
      $('nav').toggleClass('woop');
      @revealed = true




