ShimellMadden.Views.Collections ||= {}

class ShimellMadden.Views.Collections.IndexView extends Backbone.View
  template: JST["backbone/templates/collections/index"]

  events: {
    'click .carousel-prev': 'prev',
    'click .carousel-next': 'next'
  }

  initialize: () ->
    this.current = 0;
    this.items = [];

  addAll: () =>
    @options.collections.each(@addOne)

  addOne: (collection) =>
    view = new ShimellMadden.Views.Shared.CarouselItemView({model : collection})
    @$("#my-carousel").append(view.render().el)
    this.items.push(view)

  render: =>
    @$el.html(@template(collections: @options.collections.toJSON() ))
    @addAll()
    this.items[this.current].show()
    return this

  prev: () ->
    this.items[this.current].fadeOut()

    this.current--
    if this.current == -1
      this.current = this.items.length - 1
    this.items[this.current].fadeIn()

  next: () ->
    this.items[this.current].fadeOut()
    this.current++
    if this.current == this.items.length
      this.current = 0
    this.items[this.current].fadeIn()