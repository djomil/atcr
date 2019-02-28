require 'rails_helper'

RSpec.describe "alcohols/show", type: :view do
  before(:each) do
    @alcohol = assign(:alcohol, Alcohol.create!(
      :entity => "Entity",
      :code => "Code",
      :year => "Year",
      :consumption => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Entity/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/9.99/)
  end
end
