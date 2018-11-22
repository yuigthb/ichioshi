Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get '/about', to:"static_pages#about"

  get '/setting', to:"static_pages#setting"

  get '/help', to:"static_pages#help"
  
  get '/show', to:"static_pages#show"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
