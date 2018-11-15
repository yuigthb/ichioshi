Rails.application.routes.draw do

  get '/about', to:'static_pages#about'

  get '/setting', to:'static_pages#setting'

  get '/help', to:'static_pages#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
