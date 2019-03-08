require 'rails_helper'

RSpec.describe "alcoholconsumptions/index", type: :view do
  before(:each) do
    assign(:alcoholconsumptions, [
      Alcoholconsumption.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :consumption => "9.99",
        :latitude => 2.5,
        :longitude => 3.5,
        :longitude => 4.5
      ),
      Alcoholconsumption.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :consumption => "9.99",
        :latitude => 2.5,
        :longitude => 3.5,
        :longitude => 4.5
      )
    ])
  end

  it "renders a list of alcoholconsumptions" do
    render
    assert_select "tr>td", :text => "Entity".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end
