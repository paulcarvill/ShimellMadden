class PagesController < ApplicationController
  def index
  	@items = Item.where(homepage: true).order("id ASC").limit(3)
  end

  def about
  	@page = Page.find(1)
  end

  def comissioning
  	@page = Page.find(2)
  end
  
  def contact	
    @page = Page.find(3)
  end

  def shop
  end

end
