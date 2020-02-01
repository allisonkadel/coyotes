Rails.application.routes.draw do
  # get '/teas', to: 'teas#index'
  resources :teas, only: :index
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
