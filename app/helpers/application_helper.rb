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
    elsif controller?("blogs") && action?("index")
      "News"
    elsif controller?("pages") && action?("contact")
      "Contact"
    elsif controller?("pages") && action?("commissioning")
      "Commissioning"
    elsif controller?("pages") && action?("stockists")
      "Stockists"
  	elsif controller?("pages") && action?("shop")
  		"Shop"
  	else
  		"Menu"
  	end
  end
end

def bodyclass()
  if controller?("items") && action?("homepage")
    "home "
  elsif controller?("items") && action?("index")
    "items "
  elsif controller?("groups") && action?("index") && params[:type] == 'collections'
    "collections"
  elsif controller?("groups") && action?("show") && params[:type] == 'collections'
    "collection"
  elsif controller?("pages") && action?("stockists")
    "other stockists"
  elsif controller?("groups") && action?("index") && params[:type] == 'projects'
    "projects"
  elsif controller?("groups") && action?("show") && params[:type] == 'projects'
  "project"
  elsif controller?("pages") && action?("shop")
    "shoppage"
  else
    "other"
  end
end