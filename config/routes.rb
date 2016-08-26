Rails.application.routes.draw do
  resources :proposals do
    resources :comments
    resources :votes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  root to: "sessions#new"

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
