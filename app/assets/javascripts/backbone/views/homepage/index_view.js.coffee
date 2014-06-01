ShimellMadden.Views.Homepage ||= {}

class ShimellMadden.Views.Homepage.IndexView extends Backbone.View
  template: JST["backbone/templates/homepage/index"]

  events: {
    'click .carousel-prev': 'prev',
    'click .carousel-next': 'next',
    'click #centerer': 'navigate'
  }

  initialize: () ->
    @options.items.bind('reset', @addAll)
    this.current = 0;
    this.items = [];
    $(window).on("load resize", @centerImage);

  centerImage: () ->
    imageHeight = $(".slide").height();
    wrapperHeight = $('#centerer').height();
    overlap = (wrapperHeight - imageHeight) / 2;
    if overlap < 0
      $(".slide").css('margin-top', overlap);

  addAll: () =>
    @options.items.each(@addOne)

  addOne: (item) =>
    view = new ShimellMadden.Views.Shared.CarouselItemView({model : item})
    @$("#my-carousel").append(view.render().el)
    this.items.push(view)

  render: =>
    $(@el).html(@template(homepage: @options.items.toJSON() ))
    @addAll()
    # show the current carousel image:
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

  navigate: () ->
    @$("#my-carousel").animate({top: -window.innerHeight}, 750, () -> window.router.navigate("items", {trigger: true}))







