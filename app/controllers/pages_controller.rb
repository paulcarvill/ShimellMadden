class PagesController < ApplicationController
  def index
  	@items = Item.all().limit(10).order("id ASC")
  end
end
