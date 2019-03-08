require 'rails_helper'

RSpec.describe "alcoholconsumptions/new", type: :view do
  before(:each) do
    assign(:alcoholconsumption, Alcoholconsumption.new(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
      :consumption => "9.99",
      :latitude => 1.5,
      :longitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new alcoholconsumption form" do
    render

    assert_select "form[action=?][method=?]", alcoholconsumptions_path, "post" do

      assert_select "input[name=?]", "alcoholconsumption[entity]"

      assert_select "input[name=?]", "alcoholconsumption[code]"

      assert_select "input[name=?]", "alcoholconsumption[year]"

      assert_select "input[name=?]", "alcoholconsumption[consumption]"

      assert_select "input[name=?]", "alcoholconsumption[latitude]"

      assert_select "input[name=?]", "alcoholconsumption[longitude]"

      assert_select "input[name=?]", "alcoholconsumption[longitude]"
    end
  end
end
