require 'rails_helper'

RSpec.describe "sharepopulationsufferingcancers/show", type: :view do
  before(:each) do
    @sharepopulationsufferingcancer = assign(:sharepopulationsufferingcancer, Sharepopulationsufferingcancer.create!(
      :entity => "Entity",
      :code => "Code",
      :year => "Year",
      :percentage_population_neoplasms => "9.99"
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
