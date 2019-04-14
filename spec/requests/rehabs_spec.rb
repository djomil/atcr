require 'rails_helper'

RSpec.describe "Rehabs", type: :request do
  describe "GET /rehabs" do
    it "works! (now write some real specs)" do
      get rehabs_path
      expect(response).to have_http_status(200)
    end
  end
end
