Rails.application.routes.draw do

  devise_for :users

  get '/about', to:"static_pages#about"

  get '/setting', to:"static_pages#setting"

  get '/help', to:"static_pages#help"
  
  get '/show', to:"static_pages#show"
  
  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
