Rails.application.routes.draw do
  get 'homy/index'
 
  
  
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth' , registrations: 'registrations'}

 
  root 'homy#index'

  resources :otp_verifys, only: [:index, :create]
  resources :home, only: [:index]
 resources :posts
 resources :likes

  # get'/homeotp_verifys_path/index',to:'home#index',as:'home_index'
  # resources :otp_verifys



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
