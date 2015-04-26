class BlogsController < ApplicationController

  before_action only: [:show, :edit, :update, :destroy]

  def index
  	if params[:page]
      @page = params[:page]
    else
      @page = 1
    end
  	@blogs = Blog.all.order("date DESC").paginate(:page => params[:page], :per_page => 3)
  end

  def show
  	@blog = Blog.find(params[:id])
  end
    
end