Rails.application.routes.draw do

  #Create
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/create_photo", {:controller => "photos", :action => "create_row"})

  #Read
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:the_id_number", {:controller => "photos", :action => "show"})

  #Update
  get("/photos/:the_id_number/edit", {:controller => "photos", :action => "edit_form"})
  get("/update_photo/:the_id_number", {:controller => "photos", :action => "update_row"})

  #delete
  get("/delete_photo/:the_id_number", {:controller => "photos", :action => "delete_row"})


  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
