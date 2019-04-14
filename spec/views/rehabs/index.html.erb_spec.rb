require 'rails_helper'

RSpec.describe "rehabs/index", type: :view do
  before(:each) do
    assign(:rehabs, [
      Rehab.create!(
        :name => "Name",
        :address => "Address",
        :service => "MyText",
        :picture_url => "Picture Url",
        :price => "9.99"
      ),
      Rehab.create!(
        :name => "Name",
        :address => "Address",
        :service => "MyText",
        :picture_url => "Picture Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of rehabs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
