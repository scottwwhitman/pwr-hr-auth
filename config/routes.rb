Rails.application.routes.draw do
  root to: "users#new"

  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end
