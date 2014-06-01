ShimellMadden.Views.Shared ||= {}

class ShimellMadden.Views.Shared.CarouselItemView extends Backbone.View
  template: JST["backbone/templates/shared/carouselitem"]

  events:
    'click .collections-info a': 'navigate'

  tagName: "div"

  show: ->
    $(@el).show()

  fadeOut: ->
    $(@el).fadeOut()

  fadeIn: ->
    $(@el).fadeIn()

  className: "carousel-item"

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this

  navigate: (e) ->
    e.preventDefault()
    window.router.navigate("collections/"+@model.id, {trigger: true})