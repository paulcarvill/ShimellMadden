class PagesController < ApplicationController
  def index
  	@items = Item.all().limit(10).order("id ASC")
  end

  def about
  	
  end

  def comissioning
  	
  end

  def news
  	
  end

  def contact
  	
  end
end
