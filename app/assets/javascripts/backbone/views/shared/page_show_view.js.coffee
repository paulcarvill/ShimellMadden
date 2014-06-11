ShimellMadden.Views.Pages ||= {}

class ShimellMadden.Views.Pages.ShowView extends Backbone.View
  template: JST["backbone/templates/pages/show"]

  render: ->
    $(@el).html(@template())
    return this
