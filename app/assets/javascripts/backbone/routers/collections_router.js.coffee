class ShimellMadden.Routers.CollectionsRouter extends Backbone.Router
  initialize: (options) ->
    @collections = new ShimellMadden.Collections.CollectionsCollection()
    @collections.reset options.collections

  routes:
    "new"      : "newCollection"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCollection: ->
    @view = new ShimellMadden.Views.Collections.NewView(collection: @collections)
    $("#collections").html(@view.render().el)

  index: ->
    @view = new ShimellMadden.Views.Collections.IndexView(collections: @collections)
    $("#collections").html(@view.render().el)

  show: (id) ->
    collection = @collections.get(id)

    @view = new ShimellMadden.Views.Collections.ShowView(model: collection)
    $("#collections").html(@view.render().el)

  edit: (id) ->
    collection = @collections.get(id)

    @view = new ShimellMadden.Views.Collections.EditView(model: collection)
    $("#collections").html(@view.render().el)
