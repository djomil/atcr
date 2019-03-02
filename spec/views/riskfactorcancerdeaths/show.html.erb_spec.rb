require 'rails_helper'

RSpec.describe "riskfactorcancerdeaths/show", type: :view do
  before(:each) do
    @riskfactorcancerdeath = assign(:riskfactorcancerdeath, Riskfactorcancerdeath.create!(
      :cause => "Cause",
      :year => "Year",
      :share_deaths => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cause/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/9.99/)
  end
end
