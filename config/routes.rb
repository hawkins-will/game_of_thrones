Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "houses#intro"
  get "/index" => "houses#index"
  get "/houses/new" => "houses#new"
  post "/houses" => "houses#create"
  get "/houses/:id/edit" => "houses#edit"
  put "/houses/:id" => "houses#update"
  get "/houses/:id" => "houses#show"
  delete "/houses/:id" => "houses#destroy"
  get "/select_house" => "houses#join"

  get "/characters/:id/new" => "characters#new"
  post "/characters/:id/create" => "characters#create"
  get "/characters/:id/edit" => "characters#edit"
  put "/characters/:id" => "characters#update"
  delete "/characters/:id" => "characters#destroy"
  get "/characters/:id" => "characters#show"
end
