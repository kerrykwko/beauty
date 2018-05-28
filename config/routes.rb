Rails.application.routes.draw do
  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------

  # Routes for the Skintone resource:
  # CREATE
  get "/skintones/new", :controller => "skintones", :action => "new"
  post "/create_skintone", :controller => "skintones", :action => "create"

  # READ
  get "/skintones", :controller => "skintones", :action => "index"
  get "/skintones/:id", :controller => "skintones", :action => "show"

  # UPDATE
  get "/skintones/:id/edit", :controller => "skintones", :action => "edit"
  post "/update_skintone/:id", :controller => "skintones", :action => "update"

  # DELETE
  get "/delete_skintone/:id", :controller => "skintones", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
