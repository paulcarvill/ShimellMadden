ActiveAdmin.register_page "Dashboard" do

  menu false

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    columns do

      column do
        panel "Info" do
          para "Welcome to the Shimell and Madden content management system."
          div do
            ul do
                li "How to login to the CMS"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin"
                        li "Enter username + password: admin@example.com / password"
                    end

                li "How to add a user to the CMS"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/admin_users"
                        li "Click 'New Admin User' button"
                        li "Enter user's email and a password"
                        li "Click 'Create Admin user' button"
                    end
                li "How to delete a user from the CMS"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/admin_users"
                        li "Click 'Delete' link next to the user you want to delete"
                        li "Confirm that you want to delete the user"
                    end
                li "How to add a new Collection or Project:"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/groups"
                        li "Click 'New Group' button"
                        li "Add name of collection/project"
                        li "Add description (optional - appears on project + collection pages)"
                        li "Add Shopify link (optional - but 'shop this' link will only appear if you fill this in)"
                        li "Select whether the group is a 'project' or 'collection'"
                        li "Add at least one image:"
                            ul do
                                li "Click 'Add New Image' button"
                                li "Each image needs a large and small version"
                                li "Click 'Choose file' button"
                                li "Select and upload large image (XXX tall by XXXpx wide)"
                                li "Click 'Choose file' button and upload small version"
                                li "Tick 'Add to homepage carousel' checkbox if you want this image to appesr on the homepage"
                            end
                        li "Repeat this step to add multiple image to a project or collection"
                        li "If group is going into the archive, tick the 'Archived' checkbox"
                        li "Click 'Create Group' button"
                    end
                li "How to edit a Collection or Project:"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/groups"
                        li "Click the 'edit' link next to the project you want to edit"
                        li "Make any changes"
                        li "Click 'Update group' button"
                    end
                li "How to remove an image from the homepage carousel"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/images"
                        li "Sort by the 'Homepage' column"
                        li "Edit the image you want to remove from the carousel"
                        li "Untick 'Add to homepage carousel' link"
                        li "Click 'Update image' button"
                    end
                li "How to delete an image from the homepage carousel"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/images"
                        li "Click 'Delete' link next to item"
                        li "Confirm you want to delete the image"
                    end
                li "How to archive a Collection/Project"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/groups"
                        li "Click the 'Edit' link next to the collection or project to be archived"
                        li "Tick the 'Archived?' checkbox"
                        li "Click the 'Update Group' button"
                    end
                li "How to add a category to an image"
                    ul do
                        li "Edit the image"
                        li "Click the category the imtem belongs to"
                        li "Cmd-click to select multiple categories"
                        li "Cmd-click on an existing category to remove it"
                        li "Click 'Update group' button"
                    end
                li "How to add a category"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/categories"
                        li "Click the 'New Category' button"
                        li "Add thr category name"
                        li "Click the 'Create category' button"
                    end
                li "How to add a stockist"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/stockists"
                    end
                li "How to add a news story"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/stockists"
                    end
                li "How to edit the About page"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/stockists"
                    end
                li "How to edit the Contact page"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/stockists"
                    end
                li "How to edit the Commissioning page"
                    ul do
                        li "Go to http://0.0.0.0:3000/admin/stockists"
                    end


                    
            end # end of ul
            para "note: there should be at least one image on homepage caorusel at all times (otherwise it will be blank!)"
          end
        end
      end
    end
  end # content
end