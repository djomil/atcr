Rails.application.routes.draw do
  resources :sharepopulationsufferingtypescancers
  resources :riskfactorcancerdeaths
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
    get 'riskfactorcancerdeaths/index'
    get 'riskfactorcancerdeaths/destroy'
    get 'riskfactorcancerdeaths/create'
    get 'riskfactorcancerdeaths/show'
    get 'sharepopulationsufferingtypescancers/index'
    get 'sharepopulationsufferingtypescancers/destroy'
    get 'sharepopulationsufferingtypescancers/create'
    get 'sharepopulationsufferingtypescancers/show'
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
