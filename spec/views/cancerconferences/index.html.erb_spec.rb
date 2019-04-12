require 'rails_helper'

RSpec.describe "cancerconferences/index", type: :view do
  before(:each) do
    assign(:cancerconferences, [
      Cancerconference.create!(
        :event => "Event",
        :location => "Location",
        :country => "Country",
        :latitude => 2.5,
        :longitude => 3.5
      ),
      Cancerconference.create!(
        :event => "Event",
        :location => "Location",
        :country => "Country",
        :latitude => 2.5,
        :longitude => 3.5
      )
    ])
  end

  it "renders a list of cancerconferences" do
    render
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
