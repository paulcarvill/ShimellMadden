ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Homepage.ItemView extends Backbone.View
  template: JST["backbone/templates/homepage/item"]

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
