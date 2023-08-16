Rails.application.routes.draw do
  get 'home/index'

  get 'shows/index'
  get 'shows/new'
  post 'shows',              to:"shows#create"

  get 'documentaryfilms/index'
  get 'documentaryfilms/new'
  post 'documentaryfilms',   to:"documentaryfilms#create"

  get 'movies/index'
  get 'movies/new'
  post 'movies',             to:"movies#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
