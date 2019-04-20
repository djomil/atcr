Rails.application.routes.draw do
  resources :orderinshops
  resources :line_items
  resources :carts
  get 'store/index'
  resources :rehabs
  resources :cancerconferences
  resources :alcoholconsumptions
  resources :sharepopulationsufferingtypescancers
  resources :riskfactorcancerdeaths
  resources :tests
    
  get 'home/index'
  root 'home#index'
    get 'alcoholconsumptions/index'
    get 'alcoholconsumptions/destroy'
    get 'alcoholconsumptions/create'
    get 'alcoholconsumptions/show'
    get 'alcoholconsumptions/edit'
    get 'riskfactorcancerdeaths/index'
    get 'riskfactorcancerdeaths/destroy'
    get 'riskfactorcancerdeaths/create'
    get 'riskfactorcancerdeaths/show'
    get 'riskfactorcancerdeaths/edit'
    get 'sharepopulationsufferingtypescancers/index'
    get 'sharepopulationsufferingtypescancers/destroy'
    get 'sharepopulationsufferingtypescancers/create'
    get 'sharepopulationsufferingtypescancers/show'
    get 'sharepopulationsufferingtypescancers/edit'
    get 'cancerconferences/index'
    get 'cancerconferences/destroy'
    get 'cancerconferences/create'
    get 'cancerconferences/show'
    get 'cancerconferences/edit'
    get 'rehabs/index'
    get 'rehabs/destroy'
    get 'rehabs/create'
    get 'rehabs/show'
    get 'rehabs/edit'
    


               
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'cancerconferences' => 'cancerconferences#leafmap'    
    get 'mapjson' => 'alcoholconsumptions#mapjson'
    get 'highchart' => 'riskfactorcancerdeaths#highchart'
    get 'component' => 'riskfactorcancerdeaths#component'  
get 'tests' => 'tests#index'
end

