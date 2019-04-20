require 'rails_helper'

RSpec.describe "orderinshops/index", type: :view do
  before(:each) do
    assign(:orderinshops, [
      Orderinshop.create!(
        :name => "Name",
        :address => "MyText",
        :email => "Email",
        :pay_type => 2
      ),
      Orderinshop.create!(
        :name => "Name",
        :address => "MyText",
        :email => "Email",
        :pay_type => 2
      )
    ])
  end

  it "renders a list of orderinshops" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
