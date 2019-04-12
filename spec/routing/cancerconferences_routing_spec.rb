require "rails_helper"

RSpec.describe CancerconferencesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cancerconferences").to route_to("cancerconferences#index")
    end

    it "routes to #new" do
      expect(:get => "/cancerconferences/new").to route_to("cancerconferences#new")
    end

    it "routes to #show" do
      expect(:get => "/cancerconferences/1").to route_to("cancerconferences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cancerconferences/1/edit").to route_to("cancerconferences#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cancerconferences").to route_to("cancerconferences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cancerconferences/1").to route_to("cancerconferences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cancerconferences/1").to route_to("cancerconferences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cancerconferences/1").to route_to("cancerconferences#destroy", :id => "1")
    end
  end
end
