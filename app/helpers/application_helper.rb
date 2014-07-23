module ApplicationHelper

	def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def nav()
  	if controller?("projects") && action?("index")
  		"Projects"
  	elsif controller?("projects") && action?("show")
  		"Project"
  	elsif controller?("items") && action?("index")
  		"Home"
  	elsif controller?("items") && action?("show")
  		"Item"
  	elsif controller?("collections") && action?("index")
  		"Collections"
  	elsif controller?("collections") && action?("show")
  		"Collection"
  	elsif controller?("items") && action?("archive", "archiveshow")
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