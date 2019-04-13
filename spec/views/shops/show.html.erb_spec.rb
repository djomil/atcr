require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "Name",
      :address => "Address",
      :country => "Country",
      :service => "MyText",
      :picture_url => "Picture Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Picture Url/)
    expect(rendered).to match(/9.99/)
  end
end
