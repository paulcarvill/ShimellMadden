ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Items.ItemView extends Backbone.View
  template: JST["backbone/templates/items/item"]

  events:
    "click .destroy" : "destroy"

  tagName: "div"

  className: "item"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).addClass("item-"+@model.get('itemNo'))
    $(@el).html(@template(@model.toJSON() ))
    return this
