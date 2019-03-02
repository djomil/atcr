require "rails_helper"

RSpec.describe SharepopulationsufferingcancersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/sharepopulationsufferingcancers").to route_to("sharepopulationsufferingcancers#index")
    end

    it "routes to #new" do
      expect(:get => "/sharepopulationsufferingcancers/new").to route_to("sharepopulationsufferingcancers#new")
    end

    it "routes to #show" do
      expect(:get => "/sharepopulationsufferingcancers/1").to route_to("sharepopulationsufferingcancers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sharepopulationsufferingcancers/1/edit").to route_to("sharepopulationsufferingcancers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sharepopulationsufferingcancers").to route_to("sharepopulationsufferingcancers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sharepopulationsufferingcancers/1").to route_to("sharepopulationsufferingcancers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sharepopulationsufferingcancers/1").to route_to("sharepopulationsufferingcancers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sharepopulationsufferingcancers/1").to route_to("sharepopulationsufferingcancers#destroy", :id => "1")
    end
  end
end
