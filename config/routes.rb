Rails.application.routes.draw do


  devise_for :authors
  
  resources :posts do
  	resources :comments
  end	

  root "posts#index"

  devise_scope :author do 
  	get '/sign_in', to: 'devise/sessions#new' 
  end

  devise_scope :author do
  	get '/sign_out', to: 'devise/sessions#destroy'

  end	

  get '/about', to: 'pages#about'
end
