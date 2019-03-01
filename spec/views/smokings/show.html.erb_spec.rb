require 'rails_helper'

RSpec.describe "smokings/show", type: :view do
  before(:each) do
    @smoking = assign(:smoking, Smoking.create!(
      :entity => "Entity",
      :code => "Code",
      :year => "Year",
      :upper_bound => "9.99",
      :lower_bound => "9.99",
      :estimated_prevalence => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Entity/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
