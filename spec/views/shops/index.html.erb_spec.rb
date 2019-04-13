require 'rails_helper'

RSpec.describe "shops/index", type: :view do
  before(:each) do
    assign(:shops, [
      Shop.create!(
        :name => "Name",
        :address => "Address",
        :country => "Country",
        :service => "MyText",
        :picture_url => "Picture Url",
        :price => "9.99"
      ),
      Shop.create!(
        :name => "Name",
        :address => "Address",
        :country => "Country",
        :service => "MyText",
        :picture_url => "Picture Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of shops" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
