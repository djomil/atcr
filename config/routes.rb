Rails.application.routes.draw do
  resources :alcohols
  resources :tests
  get 'home/index'
  root 'home#index'
    get 'alcohols/index'
    get 'alcohols/destroy'
    get 'alcohols/create'
    get 'alcohols/show'
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
