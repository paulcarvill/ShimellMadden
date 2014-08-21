module ApplicationHelper

	def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def nav()
  	if controller?("groups") && action?("index") && params[:type] == 'projects'
  		"Projects"
  	elsif controller?("groups") && action?("show") && params[:type] == 'projects'
  		"Project"
  	elsif controller?("items") && action?("index")
  		"Home"
  	elsif controller?("items") && action?("show")
  		"Item"
  	elsif controller?("groups") && action?("index") && params[:type] == 'collections'
  		"Collections"
  	elsif controller?("groups") && action?("show") && params[:type] == 'collections'
  		"Collection"
  	elsif controller?("groups") && action?("archive", "archiveshow")
  		"Archive"
  	elsif controller?("pages") && action?("about", "show")
  		"Information"
  	elsif controller?("pages") && action?("shop")
  		"Shop"
  	else
  		"Menu"
  	end
  end
end