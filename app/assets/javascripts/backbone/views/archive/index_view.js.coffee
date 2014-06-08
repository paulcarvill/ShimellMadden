ShimellMadden.Views.Archive ||= {}

class ShimellMadden.Views.Archive.IndexView extends Backbone.View
  template: JST["backbone/templates/archive/index"]

  initialize: () ->
    # @options.projects.bind('reset', @addAll)

  addAll: () =>
    # @options.projects.each(@addOne)

  addOne: (project) =>
    # view = new ShimellMadden.Views.Projects.ProjectView({model : project})
    # @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template())
    # @$el.html(@template(projects: @options.projects.toJSON() ))
    # @addAll()

    return this
