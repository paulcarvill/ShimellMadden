class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  def homepage

    if session[:random_seed] then
      random_seed = session[:random_seed]
    else
      random_seed = session[:random_seed] = Time.now.to_i
    end

    respond_to do |format|
        format.html {
          @homepageitems = Image.all().where(homepage: true).order("id DESC")
          @items = Image.includes(:group).where(tile: true).order("RAND(#{random_seed})").paginate(:page => params[:page], :per_page => 6)
          render :layout => false
        }
        
        format.json {
          @items = Image.includes(:group).where(tile: true).order("RAND(#{random_seed})").paginate(:page => params[:page], :per_page => 6)
          if @items.length < 6
            session[:random_seed] = nil
          end
        }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :image, :price, :shipping, :shopifyid)
    end
end
