Rails.application.routes.draw do
  resources :smokings
  resources :alcohols
  resources :tests
  get 'home/index'
  root 'home#index'
    get 'alcohols/index'
    get 'alcohols/destroy'
    get 'alcohols/create'
    get 'alcohols/show'
    get 'smokings/index'
    get 'smokings/destroy'
    get 'smokings/create'
    get 'smokings/show'
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
