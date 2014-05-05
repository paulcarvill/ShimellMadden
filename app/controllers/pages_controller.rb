class PagesController < ApplicationController
  def index
  	@items = Item.where(homepage: true).limit(3)
  end
end
