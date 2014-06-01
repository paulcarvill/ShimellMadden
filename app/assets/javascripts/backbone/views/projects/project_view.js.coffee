ShimellMadden.Views.Projects ||= {}

class ShimellMadden.Views.Projects.ProjectView extends Backbone.View
  template: JST["backbone/templates/projects/project"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
