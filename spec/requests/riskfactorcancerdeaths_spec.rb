require 'rails_helper'

RSpec.describe "Riskfactorcancerdeaths", type: :request do
  describe "GET /riskfactorcancerdeaths" do
    it "works! (now write some real specs)" do
      get riskfactorcancerdeaths_path
      expect(response).to have_http_status(200)
    end
  end
end
