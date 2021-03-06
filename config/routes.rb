Rails.application.routes.draw do

  root 'welcome#home'

  get '/signin' => 'sessions#new'
  post '/sessions/create' => 'sessions#create'
  delete "/signout" => 'sessions#destroy'
  post '/rides/new' => 'rides#new'

  resources :users
  resources :attractions

end
