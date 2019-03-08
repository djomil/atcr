require "rails_helper"

RSpec.describe AlcoholconsumptionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/alcoholconsumptions").to route_to("alcoholconsumptions#index")
    end

    it "routes to #new" do
      expect(:get => "/alcoholconsumptions/new").to route_to("alcoholconsumptions#new")
    end

    it "routes to #show" do
      expect(:get => "/alcoholconsumptions/1").to route_to("alcoholconsumptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/alcoholconsumptions/1/edit").to route_to("alcoholconsumptions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/alcoholconsumptions").to route_to("alcoholconsumptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/alcoholconsumptions/1").to route_to("alcoholconsumptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/alcoholconsumptions/1").to route_to("alcoholconsumptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alcoholconsumptions/1").to route_to("alcoholconsumptions#destroy", :id => "1")
    end
  end
end
