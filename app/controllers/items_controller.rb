class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    respond_to do |format|
        format.html {
          if params[:page]
            @page = params[:page]
          else
            @page = 1
          end
          @homepageitems = Item.where(homepage: true).order("id ASC")
          @items = Item.where(archive: false).paginate(:page => params[:page], :per_page => 6)
        }
        format.json {
          @items = Item.where(archive: false).paginate(:page => params[:page], :per_page => 6)
        }
    end
  end

  def archive
    @categories = Category.all()

    if params['category']
      @items = Category.find(params['category']).items.where(archive: true).order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
    elsif params['date']
      date = Date.parse(params['date']);
      startofmonth = date.beginning_of_month
      endofmonth = date.end_of_month
      @items = Item.where(archive: true).where("created_at >= ? and created_at <= ?", startofmonth, endofmonth).order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
    else
      @items = Item.where(archive: true).paginate(:page => params[:page], :per_page => 9)
    end

    @months = Item.all().order("created_at DESC").map{|t| t.created_at.strftime("%B %Y")}.uniq 

    render "items/archive"
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def archiveshow
    @item = Item.where(archive: true).find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
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
