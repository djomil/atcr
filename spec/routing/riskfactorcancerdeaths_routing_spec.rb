require "rails_helper"

RSpec.describe RiskfactorcancerdeathsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/riskfactorcancerdeaths").to route_to("riskfactorcancerdeaths#index")
    end

    it "routes to #new" do
      expect(:get => "/riskfactorcancerdeaths/new").to route_to("riskfactorcancerdeaths#new")
    end

    it "routes to #show" do
      expect(:get => "/riskfactorcancerdeaths/1").to route_to("riskfactorcancerdeaths#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/riskfactorcancerdeaths/1/edit").to route_to("riskfactorcancerdeaths#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/riskfactorcancerdeaths").to route_to("riskfactorcancerdeaths#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/riskfactorcancerdeaths/1").to route_to("riskfactorcancerdeaths#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/riskfactorcancerdeaths/1").to route_to("riskfactorcancerdeaths#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/riskfactorcancerdeaths/1").to route_to("riskfactorcancerdeaths#destroy", :id => "1")
    end
  end
end
