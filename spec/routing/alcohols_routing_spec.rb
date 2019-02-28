require "rails_helper"

RSpec.describe AlcoholsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/alcohols").to route_to("alcohols#index")
    end

    it "routes to #new" do
      expect(:get => "/alcohols/new").to route_to("alcohols#new")
    end

    it "routes to #show" do
      expect(:get => "/alcohols/1").to route_to("alcohols#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/alcohols/1/edit").to route_to("alcohols#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/alcohols").to route_to("alcohols#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/alcohols/1").to route_to("alcohols#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/alcohols/1").to route_to("alcohols#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alcohols/1").to route_to("alcohols#destroy", :id => "1")
    end
  end
end
