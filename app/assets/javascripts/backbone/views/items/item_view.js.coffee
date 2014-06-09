ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Items.ItemView extends Backbone.View
  template: JST["backbone/templates/items/item"]

  events: {
    'click': 'itemClick'
  }

  tagName: "div"

  className: "item"

  render: ->
    $(@el).addClass("item-"+@model.get('itemNo'))
    $(@el).html(@template(@model.toJSON() ))
    return this

  itemClick: (e) ->
  	e.preventDefault()
  	window.router.navigate("items/" + @model.id, {trigger: true})
