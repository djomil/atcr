require "rails_helper"

RSpec.describe OrderinshopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/orderinshops").to route_to("orderinshops#index")
    end

    it "routes to #new" do
      expect(:get => "/orderinshops/new").to route_to("orderinshops#new")
    end

    it "routes to #show" do
      expect(:get => "/orderinshops/1").to route_to("orderinshops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/orderinshops/1/edit").to route_to("orderinshops#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/orderinshops").to route_to("orderinshops#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/orderinshops/1").to route_to("orderinshops#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/orderinshops/1").to route_to("orderinshops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/orderinshops/1").to route_to("orderinshops#destroy", :id => "1")
    end
  end
end
