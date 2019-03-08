require 'rails_helper'

RSpec.describe "Alcoholconsumptions", type: :request do
  describe "GET /alcoholconsumptions" do
    it "works! (now write some real specs)" do
      get alcoholconsumptions_path
      expect(response).to have_http_status(200)
    end
  end
end
