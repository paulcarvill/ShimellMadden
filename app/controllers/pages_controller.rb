class PagesController < ApplicationController

  def about
  	@page = Page.find(1)
  end

  def commissioning
  	@page = Page.find(2)
  end
  
  def contact	
    @page = Page.find(3)
  end

  def stockists
    @stockists = Stockist.all()
  end

  def shop
  end

end
