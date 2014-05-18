ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Homepage.ItemView extends Backbone.View
  template: JST["backbone/templates/homepage/item"]

  events:
    "click .destroy" : "destroy"

  tagName: "div"

  show: ->
    $(@el).show()

  fadeOut: ->
    $(@el).fadeOut()

  fadeIn: ->
    $(@el).fadeIn()

  className: "carousel-item"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
