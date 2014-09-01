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
          if params[:page]
            @page = params[:page]
          else
            @page = 1
          end
          # @homepageitems = Item.where(homepage: true).order("id ASC")
          @homepageitems = Image.all().where(homepage: true).order("id DESC")

          @items = Image.includes(:group).where("group_id IS NOT NULL").order("RAND(#{random_seed})").paginate(:page => params[:page], :per_page => 6)
        }
        format.json {
          @items = Image.includes(:group).where("group_id IS NOT NULL").order("RAND(#{random_seed})").paginate(:page => params[:page], :per_page => 6)
          if @items.length < 6
            session[:random_seed] = nil
          end
        }
    end
  end

  def index

    # how to make this random seed unique between session?
    # create random number on first request and then store it in the user's session
    # to keep it the same between subsequent requests
    if session[:random_seed] then
      random_seed = session[:random_seed]
    else
      random_seed = session[:random_seed] = Time.now.to_i
    end

    respond_to do |format|
        format.html {
          if params[:page]
            @page = params[:page]
          else
            @page = 1
          end

          @items = Image.includes(:group).where("group_id IS NOT NULL").order("RAND(#{random_seed})").paginate(:page => params[:page], :per_page => 6)
        }
        
        format.json {
          @items = Image.includes(:group).where("group_id IS NOT NULL").order("RAND(#{random_seed})").paginate(:page => params[:page], :per_page => 6)

          # delete the session seed value if they've seen all the items,
          # so next time they refresh the page they get a new item order
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
      params.require(:item).permit(:name, :description, :image, :price, :shipping, :shopifyid, :imageStyleOne.url, :imageStyleTwo, :imageStyleThree)
    end
end
