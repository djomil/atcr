require "rails_helper"

RSpec.describe SharepopulationsufferingtypescancersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/sharepopulationsufferingtypescancers").to route_to("sharepopulationsufferingtypescancers#index")
    end

    it "routes to #new" do
      expect(:get => "/sharepopulationsufferingtypescancers/new").to route_to("sharepopulationsufferingtypescancers#new")
    end

    it "routes to #show" do
      expect(:get => "/sharepopulationsufferingtypescancers/1").to route_to("sharepopulationsufferingtypescancers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sharepopulationsufferingtypescancers/1/edit").to route_to("sharepopulationsufferingtypescancers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sharepopulationsufferingtypescancers").to route_to("sharepopulationsufferingtypescancers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sharepopulationsufferingtypescancers/1").to route_to("sharepopulationsufferingtypescancers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sharepopulationsufferingtypescancers/1").to route_to("sharepopulationsufferingtypescancers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sharepopulationsufferingtypescancers/1").to route_to("sharepopulationsufferingtypescancers#destroy", :id => "1")
    end
  end
end
