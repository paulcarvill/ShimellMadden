ShimellMadden.Views.Homepage ||= {}

class ShimellMadden.Views.Homepage.IndexView extends Backbone.View
  template: JST["backbone/templates/homepage/index"]

  initialize: () ->
    @options.items.bind('reset', @addAll)

  addAll: () =>
    @options.items.each(@addOne)

  addOne: (item) =>
    view = new ShimellMadden.Views.Homepage.ItemView({model : item})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(homepage: @options.items.toJSON() ))
    @addAll()

    # make a carousel out of the homepage images here

    return this
