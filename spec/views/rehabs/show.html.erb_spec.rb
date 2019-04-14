require 'rails_helper'

RSpec.describe "rehabs/show", type: :view do
  before(:each) do
    @rehab = assign(:rehab, Rehab.create!(
      :name => "Name",
      :address => "Address",
      :service => "MyText",
      :picture_url => "Picture Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Picture Url/)
    expect(rendered).to match(/9.99/)
  end
end
