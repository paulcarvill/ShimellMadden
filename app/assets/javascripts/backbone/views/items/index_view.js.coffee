ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Items.IndexView extends Backbone.View
  template: JST["backbone/templates/items/index"]

  events: {
    'click .item-prev': 'prev',
    'click .item-next': 'next'
  }

  initialize: () ->
    @options.items.bind('reset', @addAll)

  addAll: () =>
    @options.items.each(@addOne)

  addOne: (item, index) =>
    index++;
    item.set({"itemNo" : index})
    view = new ShimellMadden.Views.Items.ItemView({model : item})
    @$("article").append(view.render().el)

  render: =>
    $(@el).html(@template(items: @options.items.toJSON() ))
    @addAll()
    return this

  prev: () ->

  next: () ->
    @options.items.getNextPage()
