Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "homepages#index"
  
  resources :users, only: [:index, :create, :show]
  get '/users/login', to: "users#login", as: "login"
  
end
