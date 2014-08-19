class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  # GET /collections
  # GET /collections.json

  def index
    if params[:type] == 'collections'
      @collections = Group.where(grouptype: 'Collection')
      render "groups/collections"
    elsif params[:type] == 'projects'
      @projects = Group.where(grouptype: 'Project').paginate(:page => params[:page], :per_page => 5)
      render "groups/projects"      
    end
  end


  def show
    if params[:type] == 'collections'
      @collections = Group.where(grouptype: 'Collection')
      @items = Image.where(group_id: params[:id]).rotate(1)
      render "collections/show"
    elsif params[:type] == 'projects'
      @project = Group.find(params[:id])
      render "groups/projectshow"
    end
  end

 
  def archive
    @categories = Category.all()

    if params['category']
      @items = Category.find(params['category']).images.joins(:group).where(groups: { grouptype: 'Archive' }).order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
    elsif params['date']
      date = Date.parse(params['date']);
      startofmonth = date.beginning_of_month
      endofmonth = date.end_of_month
      @items = Image.joins(:group).where("groups.grouptype = ?", 'Archive').where("images.created_at >= ? and images.created_at <= ?", startofmonth, endofmonth).order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
    else
      @items = Image.joins(:group).where(groups: { grouptype: 'Archive' }).paginate(:page => params[:page], :per_page => 9)
    end

    @months = Image.all().order("created_at DESC").map{|t| t.created_at.strftime("%B %Y")}.uniq 
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
