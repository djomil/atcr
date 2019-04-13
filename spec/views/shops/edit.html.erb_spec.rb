require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "MyString",
      :address => "MyString",
      :country => "MyString",
      :service => "MyText",
      :picture_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[address]"

      assert_select "input[name=?]", "shop[country]"

      assert_select "textarea[name=?]", "shop[service]"

      assert_select "input[name=?]", "shop[picture_url]"

      assert_select "input[name=?]", "shop[price]"
    end
  end
end
