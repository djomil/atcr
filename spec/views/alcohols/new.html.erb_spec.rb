require 'rails_helper'

RSpec.describe "alcohols/new", type: :view do
  before(:each) do
    assign(:alcohol, Alcohol.new(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
      :consumption => "9.99"
    ))
  end

  it "renders new alcohol form" do
    render

    assert_select "form[action=?][method=?]", alcohols_path, "post" do

      assert_select "input[name=?]", "alcohol[entity]"

      assert_select "input[name=?]", "alcohol[code]"

      assert_select "input[name=?]", "alcohol[year]"

      assert_select "input[name=?]", "alcohol[consumption]"
    end
  end
end
