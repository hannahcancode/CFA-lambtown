Rails.application.routes.draw do
  resources :posts
  resources :posts, :shallow => true do
    resources :comments
  end
  root 'pages#home'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
