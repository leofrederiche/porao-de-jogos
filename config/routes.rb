Rails.application.routes.draw do

  get "/", to: "welcome#index", as: :root

  get "/games", to: "games#index", as: :games
  get "/games/new", to: "games#new", as: :new_game
  post "/games/new", to: "games#create", as: false
  get "/games/show/:name", to: "games#show", as: :show_game

  get "/users/new", to: "users#new", as: :new_user
  post "/users/new", to: "users#create", as: false

end
