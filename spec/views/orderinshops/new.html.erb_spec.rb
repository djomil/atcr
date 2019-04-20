require 'rails_helper'

RSpec.describe "orderinshops/new", type: :view do
  before(:each) do
    assign(:orderinshop, Orderinshop.new(
      :name => "MyString",
      :address => "MyText",
      :email => "MyString",
      :pay_type => 1
    ))
  end

  it "renders new orderinshop form" do
    render

    assert_select "form[action=?][method=?]", orderinshops_path, "post" do

      assert_select "input[name=?]", "orderinshop[name]"

      assert_select "textarea[name=?]", "orderinshop[address]"

      assert_select "input[name=?]", "orderinshop[email]"

      assert_select "input[name=?]", "orderinshop[pay_type]"
    end
  end
end
