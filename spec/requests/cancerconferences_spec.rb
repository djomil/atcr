require 'rails_helper'

RSpec.describe "Cancerconferences", type: :request do
  describe "GET /cancerconferences" do
    it "works! (now write some real specs)" do
      get cancerconferences_path
      expect(response).to have_http_status(200)
    end
  end
end
