Rails.application.routes.draw do
  resources :alcohols
  resources :tests
  get 'home/index'
  root 'home#index'
    get 'alcohols/index'
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
