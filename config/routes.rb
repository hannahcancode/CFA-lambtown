Rails.application.routes.draw do
  # resources :posts, :shallow => true do
  #   resources :comments
  resources :comments
  resources :posts
  # end
  devise_for :users
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
