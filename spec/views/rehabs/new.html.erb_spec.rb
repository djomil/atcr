require 'rails_helper'

RSpec.describe "rehabs/new", type: :view do
  before(:each) do
    assign(:rehab, Rehab.new(
      :name => "MyString",
      :address => "MyString",
      :service => "MyText",
      :picture_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new rehab form" do
    render

    assert_select "form[action=?][method=?]", rehabs_path, "post" do

      assert_select "input[name=?]", "rehab[name]"

      assert_select "input[name=?]", "rehab[address]"

      assert_select "textarea[name=?]", "rehab[service]"

      assert_select "input[name=?]", "rehab[picture_url]"

      assert_select "input[name=?]", "rehab[price]"
    end
  end
end
