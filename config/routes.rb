Rails.application.routes.draw do
  resources :new_calls
  get 'main/index'
  get 'new_calls/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
