Rails.application.routes.draw do


  devise_for :authors
  resources :posts do
  	resources :comments
  end	

  root "posts#index"

  get '/about', to: 'pages#about'
end
