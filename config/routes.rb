Rails.application.routes.draw do
  get 'posts/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#login_form'
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/:id" => "users#show"

  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
end
