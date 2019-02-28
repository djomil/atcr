require 'rails_helper'

RSpec.describe "alcohols/index", type: :view do
  before(:each) do
    assign(:alcohols, [
      Alcohol.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :consumption => "9.99"
      ),
      Alcohol.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :consumption => "9.99"
      )
    ])
  end

  it "renders a list of alcohols" do
    render
    assert_select "tr>td", :text => "Entity".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
