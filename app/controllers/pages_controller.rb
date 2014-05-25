class PagesController < ApplicationController
  def index
  	@items = Item.where(homepage: true).order("id ASC").limit(3)
  end

  def about
  	
  end

  def comissioning
  	
  end

  def news
  	@blogs = Blog.all.paginate(:page => params[:page], :per_page => 3)
  end
  
  def contact	
  end

  def shop
  end
end
