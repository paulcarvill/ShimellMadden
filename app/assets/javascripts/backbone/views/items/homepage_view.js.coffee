ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Items.HomepageView extends Backbone.View
  template: JST["backbone/templates/items/homepage"]

  initialize: () ->
    @options.items.bind('reset', @addAll)

  addAll: () =>
    @options.items.each(@addOne)

  addOne: (item) =>
    view = new ShimellMadden.Views.Items.ItemView({model : item})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(items: @options.items.toJSON() ))
    @addAll()

    return this
