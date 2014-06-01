ShimellMadden.Views.Collections ||= {}

class ShimellMadden.Views.Collections.ShowView extends Backbone.View
  template: JST["backbone/templates/collections/show"]

  events: {
    'click .carousel-prev': 'prev',
    'click .carousel-next': 'next'
  }

  initialize: () ->
    this.current = 0;
    this.items = [];
    @itemsForCarousel = new ShimellMadden.Collections.ItemsCollection(@options.model.get('items'))

  addAll: () =>
    @itemsForCarousel.each(@addOne)

  addOne: (collectionItem) =>
    view = new ShimellMadden.Views.Shared.CarouselItemView({model : collectionItem})
    @$("#m-carousel").append(view.render().el)
    this.items.push(view)

  render: =>
    @$el.html(@template(model: @options.model.toJSON() ))
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