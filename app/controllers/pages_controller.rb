class PagesController < ApplicationController
  def index
  	@items = Item.where(homepage: true).order("id ASC").limit(3)
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
