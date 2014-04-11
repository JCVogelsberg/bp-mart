BpMart::Application.routes.draw do
root :to => 'products#index'

get 'login', to: 'sessions#new', as: 'login'

resources :products
resources :users
resources :sessions
end
