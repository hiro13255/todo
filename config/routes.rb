Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  root "tasks#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
