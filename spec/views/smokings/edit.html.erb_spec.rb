require 'rails_helper'

RSpec.describe "smokings/edit", type: :view do
  before(:each) do
    @smoking = assign(:smoking, Smoking.create!(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
      :upper_bound => "9.99",
      :lower_bound => "9.99",
      :estimated_prevalence => "9.99"
    ))
  end

  it "renders the edit smoking form" do
    render

    assert_select "form[action=?][method=?]", smoking_path(@smoking), "post" do

      assert_select "input[name=?]", "smoking[entity]"

      assert_select "input[name=?]", "smoking[code]"

      assert_select "input[name=?]", "smoking[year]"

      assert_select "input[name=?]", "smoking[upper_bound]"

      assert_select "input[name=?]", "smoking[lower_bound]"

      assert_select "input[name=?]", "smoking[estimated_prevalence]"
    end
  end
end
