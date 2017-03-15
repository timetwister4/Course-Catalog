Rails.application.routes.draw do
  get 'courses', to: 'courses#index'

  get 'subjects', to: 'subjects#index'
  get 'instructors', to: 'instructors#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'


  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
