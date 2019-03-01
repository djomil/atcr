require 'rails_helper'

RSpec.describe "Smokings", type: :request do
  describe "GET /smokings" do
    it "works! (now write some real specs)" do
      get smokings_path
      expect(response).to have_http_status(200)
    end
  end
end
