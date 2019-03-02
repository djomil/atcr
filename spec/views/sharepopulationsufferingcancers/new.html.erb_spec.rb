require 'rails_helper'

RSpec.describe "sharepopulationsufferingcancers/new", type: :view do
  before(:each) do
    assign(:sharepopulationsufferingcancer, Sharepopulationsufferingcancer.new(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
      :percentage_population_neoplasms => "9.99"
    ))
  end

  it "renders new sharepopulationsufferingcancer form" do
    render

    assert_select "form[action=?][method=?]", sharepopulationsufferingcancers_path, "post" do

      assert_select "input[name=?]", "sharepopulationsufferingcancer[entity]"

      assert_select "input[name=?]", "sharepopulationsufferingcancer[code]"

      assert_select "input[name=?]", "sharepopulationsufferingcancer[year]"

      assert_select "input[name=?]", "sharepopulationsufferingcancer[percentage_population_neoplasms]"
    end
  end
end
