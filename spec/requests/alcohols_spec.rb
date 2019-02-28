require 'rails_helper'

RSpec.describe "Alcohols", type: :request do
  describe "GET /alcohols" do
    it "works! (now write some real specs)" do
      get alcohols_path
      expect(response).to have_http_status(200)
    end
  end
end
