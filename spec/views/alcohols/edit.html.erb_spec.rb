require 'rails_helper'

RSpec.describe "alcohols/edit", type: :view do
  before(:each) do
    @alcohol = assign(:alcohol, Alcohol.create!(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
      :consumption => "9.99"
    ))
  end

  it "renders the edit alcohol form" do
    render

    assert_select "form[action=?][method=?]", alcohol_path(@alcohol), "post" do

      assert_select "input[name=?]", "alcohol[entity]"

      assert_select "input[name=?]", "alcohol[code]"

      assert_select "input[name=?]", "alcohol[year]"

      assert_select "input[name=?]", "alcohol[consumption]"
    end
  end
end
