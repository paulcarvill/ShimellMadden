ShimellMadden.Views.Items ||= {}

class ShimellMadden.Views.Items.IndexView extends Backbone.View
  template: JST["backbone/templates/items/index"]

  events: {
    'click .item-prev': 'prev',
    'click .item-next': 'next'
  }

  initialize: () ->
    @paginating = false
    @options.items.bind('reset', @addAll)
    $(window).scroll(() =>
        if $(window).scrollTop() + $(window).height() >= ( $(document).height() - 200 )
          @paginating = true
          @next();
    )

  addAll: () =>
    @paginating = false
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
    if @options.items.hasNextPage()
      @options.items.getNextPage()
    else
      $(window).unbind('scroll');