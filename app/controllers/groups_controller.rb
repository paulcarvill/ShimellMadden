class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  def index
    if params[:type] == 'collections'
      @collections = Group.where(grouptype: 'Collection')
      render "groups/collections"
    elsif params[:type] == 'projects'
      @projects = Group.where("grouptype = ? and archived != ?",'Project', true).paginate(:page => params[:page], :per_page => 5)
      render "groups/projects"      
    end
  end


  def show
    if params[:type] == 'collections'
      
      @collections = Group.where(grouptype: 'Collection')
      @items = Image.where(group_id: params[:id]).rotate(1)
      render "groups/collectionsshow"
    
    elsif params[:type] == 'projects'

      @project = Group.find_by!(id: params[:id], grouptype: 'project')
      @previous = Group.where("id < ?", params[:id]).where(grouptype: 'Project').order(:id).last   
      @next = Group.where("id > ?", params[:id]).where(grouptype: 'Project').order(:id).first 

      @images = Image.where(group_id: params[:id])

      numImages = @images.length;
      numWider = nil;

      @images.each_with_index do |img, index|
        if img.itemImage.width > img.itemImage.height
          numWider = index
          break
        end
      end

      
      render "groups/projectshow"
    end
  end

 
  def archive
    @categories = Category.all()

    if params['category']
      @items = Category.find(params['category']).images.where("archived = ?", true ).order("date DESC").paginate(:page => params[:page], :per_page => 12)
    elsif params['date']
      date = Date.parse(params['date']);
      startofmonth = date.beginning_of_month
      endofmonth = date.end_of_month
      @items = Image.where("archived = ?", true).where("date >= ? and date <= ?", startofmonth, endofmonth).order("date DESC").paginate(:page => params[:page], :per_page => 12)
    else
      # show all archive items, paginated
      @items = Image.where("archived = ?", true).order("date DESC").paginate(:page => params[:page], :per_page => 12)
    end

    @months = Image.all().order("date DESC").map{|t| t.date.strftime("%B %Y")}.uniq 
    render "groups/archive"
  end

  def archiveshow
    @item = Image.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_params
      params.require(:group).permit(:name)
    end
end
