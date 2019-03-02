require 'rails_helper'

RSpec.describe "riskfactorcancerdeaths/index", type: :view do
  before(:each) do
    assign(:riskfactorcancerdeaths, [
      Riskfactorcancerdeath.create!(
        :cause => "Cause",
        :year => "Year",
        :share_deaths => "9.99"
      ),
      Riskfactorcancerdeath.create!(
        :cause => "Cause",
        :year => "Year",
        :share_deaths => "9.99"
      )
    ])
  end

  it "renders a list of riskfactorcancerdeaths" do
    render
    assert_select "tr>td", :text => "Cause".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
