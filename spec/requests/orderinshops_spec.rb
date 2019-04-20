require 'rails_helper'

RSpec.describe "Orderinshops", type: :request do
  describe "GET /orderinshops" do
    it "works! (now write some real specs)" do
      get orderinshops_path
      expect(response).to have_http_status(200)
    end
  end
end
