ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Items.ItemView extends Backbone.View
  template: JST["backbone/templates/items/item"]

  tagName: "div"

  className: "item"

  render: ->
    $(@el).addClass("item-"+@model.get('itemNo'))
    $(@el).html(@template(@model.toJSON() ))
    return this
