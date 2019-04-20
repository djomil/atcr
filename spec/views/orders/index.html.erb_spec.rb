require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :nam => "Nam",
        :address => "MyText",
        :email => "Email",
        :pay_type => 2
      ),
      Order.create!(
        :nam => "Nam",
        :address => "MyText",
        :email => "Email",
        :pay_type => 2
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Nam".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
