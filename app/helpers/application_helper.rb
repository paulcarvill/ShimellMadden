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
  		"Menu"
  	elsif controller?("items") && action?("show")
  		"Item"
  	elsif controller?("groups") && action?("index") && params[:type] == 'collections'
  		"Collections"
  	elsif controller?("groups") && action?("show") && params[:type] == 'collections'
  		"Collection"
  	elsif controller?("groups") && action?("archive", "archiveshow")
  		"Archive"
  	elsif controller?("pages") && action?("about")
  		"About"
    elsif controller?("pages") && action?("index")
      "News"
    elsif controller?("pages") && action?("contact")
      "Contact"
    elsif controller?("pages") && action?("comissioning")
      "Commissioning"
  	elsif controller?("pages") && action?("shop")
  		"Shop"
  	else
  		"Menu"
  	end
  end
end