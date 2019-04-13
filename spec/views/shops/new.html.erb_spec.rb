require 'rails_helper'

RSpec.describe "shops/new", type: :view do
  before(:each) do
    assign(:shop, Shop.new(
      :name => "MyString",
      :address => "MyString",
      :country => "MyString",
      :service => "MyText",
      :picture_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[address]"

      assert_select "input[name=?]", "shop[country]"

      assert_select "textarea[name=?]", "shop[service]"

      assert_select "input[name=?]", "shop[picture_url]"

      assert_select "input[name=?]", "shop[price]"
    end
  end
end
