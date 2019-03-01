require "rails_helper"

RSpec.describe SmokingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/smokings").to route_to("smokings#index")
    end

    it "routes to #new" do
      expect(:get => "/smokings/new").to route_to("smokings#new")
    end

    it "routes to #show" do
      expect(:get => "/smokings/1").to route_to("smokings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/smokings/1/edit").to route_to("smokings#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/smokings").to route_to("smokings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/smokings/1").to route_to("smokings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/smokings/1").to route_to("smokings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/smokings/1").to route_to("smokings#destroy", :id => "1")
    end
  end
end
