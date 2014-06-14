ShimellMadden.Views.Shared ||= {}

class ShimellMadden.Views.Shared.NavView extends Backbone.View
  template: JST["backbone/templates/shared/nav"]

  events: {
    'click #nav-home'        : 'home',
    'click #nav-items'       : 'items',
    'click #nav-collections' : 'collections',
    'click #nav-archive'     : 'archive',
    'click #nav-projects'    : 'projects',
    'click #nav-info'        : 'about',
    'click #nav-shop'        : 'shop',
    'click .nav-header'      : 'revealNav'
  }

  tagName: "div"

  initialize: () ->
    @revealed = false;
    @didScroll = false
    @changeHeaderOn = 74
    @doNav = false 
    if !Modernizr.touch && @doNav
      window.addEventListener( 'scroll', (event) =>
        if !@didScroll
          @didScroll = true
          setTimeout( @scrollPage, 250 )
      , false );

  setCurrent: (title) ->
    $('.nav-header span', @el).text(title)

  scrollPage: () =>
    sy = @scrollY();
    if sy >= @changeHeaderOn
      $('header').addClass('sticky');
      $('#items').addClass('stickypadding');
    else
      $('header').removeClass('sticky');
      $('#items').removeClass('stickypadding');
    @didScroll = false;

  scrollY: () ->
    return window.pageYOffset || $(@el).scrollTop;

  render: ->
    $(@el).html(@template)
    return this

  navigate: (e) ->
    e.preventDefault()
    window.router.navigate("collections/"+@model.id, {trigger: true})

  home: (e) ->
    e.preventDefault()
    window.router.navigate("index", {trigger: true})

  items: (e) ->
    e.preventDefault()
    @revealNav()
    window.router.navigate("items", {trigger: true})

  collections: (e) ->
    e.preventDefault()
    @revealNav()
    window.router.navigate("collections", {trigger: true})

  projects: (e) ->
    e.preventDefault()
    @revealNav()
    window.router.navigate("projects", {trigger: true})

  archive: (e) ->
    e.preventDefault()
    @revealNav()
    window.router.navigate("archive", {trigger: true})

  about: (e) ->
    e.preventDefault()
    @revealNav()
    window.router.navigate("about", {trigger: true})

  shop: () ->
    window.router.navigate("shop", {trigger: true})

  revealNav: () ->
    if @revealed
      $('nav').toggleClass('woop');
      @revealed = false
      $('.nav-header img').attr('src', '/assets/menu-closed.svg');
    else
      $('nav').toggleClass('woop');
      $('.nav-header img').attr('src', '/assets/menu-open.svg');
      @revealed = true


