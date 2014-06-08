ShimellMadden.Views.Shared ||= {}

class ShimellMadden.Views.Shared.NavView extends Backbone.View
  template: JST["backbone/templates/shared/nav"]

  tagName: "div"

  initialize: () ->
    @didScroll = false
    @changeHeaderOn = 74

    window.addEventListener( 'scroll', (event) =>
      if !@didScroll
        @didScroll = true
        setTimeout( @scrollPage, 250 )
    , false );

  scrollPage: () =>
    sy = @scrollY();
    console.log(sy)
    if sy >= @changeHeaderOn
      # $(@el).addClass('shrink')
      $('header').addClass('sticky');
      $('#items').addClass('stickypadding');
    else
      # $(@el).removeClass('shrink')
      $('header').removeClass('sticky');
      $('#items').removeClass('stickypadding');
    @didScroll = false;

  scrollY: () ->
    console.log('here');
    return window.pageYOffset || $(@el).scrollTop;

  show: ->
    $(@el).show()

  fadeOut: ->
    $(@el).fadeOut()

  fadeIn: ->
    $(@el).fadeIn()

  render: ->
    $(@el).html(@template)
    return this

  navigate: (e) ->
    e.preventDefault()
    window.router.navigate("collections/"+@model.id, {trigger: true})