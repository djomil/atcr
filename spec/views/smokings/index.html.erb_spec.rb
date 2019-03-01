require 'rails_helper'

RSpec.describe "smokings/index", type: :view do
  before(:each) do
    assign(:smokings, [
      Smoking.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :upper_bound => "9.99",
        :lower_bound => "9.99",
        :estimated_prevalence => "9.99"
      ),
      Smoking.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :upper_bound => "9.99",
        :lower_bound => "9.99",
        :estimated_prevalence => "9.99"
      )
    ])
  end

  it "renders a list of smokings" do
    render
    assert_select "tr>td", :text => "Entity".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
