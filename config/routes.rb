Rails.application.routes.draw do
  resources :colids
  # get 'home/index'
  root 'home#index'
  resources :teachers
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
