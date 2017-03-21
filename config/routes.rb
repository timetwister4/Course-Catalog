Rails.application.routes.draw do
  post 'enrollments/create/:user_id&:course_id', to: 'enrollments#create'


  get 'enrollments/:user_id/show', to: 'enrollments#show'
  post 'enrollments/destroy/:user_id&:course_id', to: 'enrollments#destroy'

  get 'search/new'

  get 'search/show'

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
