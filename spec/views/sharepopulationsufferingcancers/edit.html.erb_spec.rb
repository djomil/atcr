require 'rails_helper'

RSpec.describe "sharepopulationsufferingcancers/edit", type: :view do
  before(:each) do
    @sharepopulationsufferingcancer = assign(:sharepopulationsufferingcancer, Sharepopulationsufferingcancer.create!(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
      :percentage_population_neoplasms => "9.99"
    ))
  end

  it "renders the edit sharepopulationsufferingcancer form" do
    render

    assert_select "form[action=?][method=?]", sharepopulationsufferingcancer_path(@sharepopulationsufferingcancer), "post" do

      assert_select "input[name=?]", "sharepopulationsufferingcancer[entity]"

      assert_select "input[name=?]", "sharepopulationsufferingcancer[code]"

      assert_select "input[name=?]", "sharepopulationsufferingcancer[year]"

      assert_select "input[name=?]", "sharepopulationsufferingcancer[percentage_population_neoplasms]"
    end
  end
end
