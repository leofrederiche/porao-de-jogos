Rails.application.routes.draw do

  get "/", to: "welcome#index", as: :root

  get "/games", to: "games#index", as: :games
  get "/games/new", to: "games#new", as: :new_game
  post "/games/new", to: "games#create", as: false
  get "/games/show/:name", to: "games#show", as: :show_game
  get "/games/ranking", to: "games#ranking", as: :ranking

  get "/users/new", to: "users#new", as: :new_user
  post "/users/new", to: "users#create", as: false
  get "/user/games/:name", to: "users#games", as: :show_user

  get "/login/new", to: "login#new", as: :new_login
  post "/login/new", to: "login#create", as: false
  get "/login/destroy", to: "login#destroy", as: :destroy_login

  post "/games/show/:name", to: "review#create", as: false

  get "/games/quests/:id", to: "quests#index", as: :quests
  get "/games/quests/new/:id", to: "quests#new", as: :new_quest
  post "/games/quests/new/:id", to: "quests#create", as: false

end
