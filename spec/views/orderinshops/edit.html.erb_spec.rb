require 'rails_helper'

RSpec.describe "orderinshops/edit", type: :view do
  before(:each) do
    @orderinshop = assign(:orderinshop, Orderinshop.create!(
      :name => "MyString",
      :address => "MyText",
      :email => "MyString",
      :pay_type => 1
    ))
  end

  it "renders the edit orderinshop form" do
    render

    assert_select "form[action=?][method=?]", orderinshop_path(@orderinshop), "post" do

      assert_select "input[name=?]", "orderinshop[name]"

      assert_select "textarea[name=?]", "orderinshop[address]"

      assert_select "input[name=?]", "orderinshop[email]"

      assert_select "input[name=?]", "orderinshop[pay_type]"
    end
  end
end
