require 'rails_helper'

RSpec.describe "rehabs/edit", type: :view do
  before(:each) do
    @rehab = assign(:rehab, Rehab.create!(
      :name => "MyString",
      :address => "MyString",
      :service => "MyText",
      :picture_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit rehab form" do
    render

    assert_select "form[action=?][method=?]", rehab_path(@rehab), "post" do

      assert_select "input[name=?]", "rehab[name]"

      assert_select "input[name=?]", "rehab[address]"

      assert_select "textarea[name=?]", "rehab[service]"

      assert_select "input[name=?]", "rehab[picture_url]"

      assert_select "input[name=?]", "rehab[price]"
    end
  end
end
