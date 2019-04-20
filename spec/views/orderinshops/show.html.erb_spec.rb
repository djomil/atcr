require 'rails_helper'

RSpec.describe "orderinshops/show", type: :view do
  before(:each) do
    @orderinshop = assign(:orderinshop, Orderinshop.create!(
      :name => "Name",
      :address => "MyText",
      :email => "Email",
      :pay_type => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
  end
end
