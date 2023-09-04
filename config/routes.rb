Rails.application.routes.draw do
  resources :mpesas
  resources :users
  resources :reviews
  resources :vegetables

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
