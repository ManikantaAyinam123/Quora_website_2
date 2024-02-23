Rails.application.routes.draw do
 get 'homy/index'
 devise_for :users, controllers: {omniauth_callbacks: 'omniauth' , registrations: 'registrations'}
 root 'homy#index'
 resources :otp_verifys, only: [:index, :create]
 resources :home, only: [:index]
 resources :posts
 resources :likes
 resources :postcomments
 get '/questions/:content', to: 'questions#show', as: 'question'
 resources :questions
 
end
