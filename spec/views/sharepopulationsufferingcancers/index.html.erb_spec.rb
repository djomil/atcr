require 'rails_helper'

RSpec.describe "sharepopulationsufferingcancers/index", type: :view do
  before(:each) do
    assign(:sharepopulationsufferingcancers, [
      Sharepopulationsufferingcancer.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :percentage_population_neoplasms => "9.99"
      ),
      Sharepopulationsufferingcancer.create!(
        :entity => "Entity",
        :code => "Code",
        :year => "Year",
        :percentage_population_neoplasms => "9.99"
      )
    ])
  end

  it "renders a list of sharepopulationsufferingcancers" do
    render
    assert_select "tr>td", :text => "Entity".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
