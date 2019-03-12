Rails.application.routes.draw do
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
    

               
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    
    get 'mapjson' => 'alcoholconsumptions#mapjson'
    get 'highchart' => 'riskfactorcancerdeaths#highchart'
    get 'rss' => 'riskfactorcancerdeaths#rss'  

end

