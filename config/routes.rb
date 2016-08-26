Rails.application.routes.draw do
  resources :proposals do
    resources :comments
    resources :votes
  end
end
