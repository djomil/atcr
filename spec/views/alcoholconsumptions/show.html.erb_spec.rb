require 'rails_helper'

RSpec.describe "alcoholconsumptions/show", type: :view do
  before(:each) do
    @alcoholconsumption = assign(:alcoholconsumption, Alcoholconsumption.create!(
      :entity => "Entity",
      :code => "Code",
      :year => "Year",
      :consumption => "9.99",
      :latitude => 2.5,
      :longitude => 3.5,
      :longitude => 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Entity/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
  end
end
