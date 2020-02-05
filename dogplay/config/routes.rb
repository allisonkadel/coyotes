Rails.application.routes.draw do
  resources :dogtoys, only: [:index, :new, :create] # will generate the below routes
  # get 'dogtoys/new', to: 'dogtoys#new'
  # get '/dogtoys', to: 'dogtoys#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
