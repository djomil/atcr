require "rails_helper"

RSpec.describe RehabsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/rehabs").to route_to("rehabs#index")
    end

    it "routes to #new" do
      expect(:get => "/rehabs/new").to route_to("rehabs#new")
    end

    it "routes to #show" do
      expect(:get => "/rehabs/1").to route_to("rehabs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rehabs/1/edit").to route_to("rehabs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/rehabs").to route_to("rehabs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rehabs/1").to route_to("rehabs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rehabs/1").to route_to("rehabs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rehabs/1").to route_to("rehabs#destroy", :id => "1")
    end
  end
end
