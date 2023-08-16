Rails.application.routes.draw do
  get 'shows/index'
  get 'shows/create'
  get 'shows/new'
  get 'documentaryfilms/index'
  get 'documentaryfilms/create'
  get 'documentaryfilms/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
