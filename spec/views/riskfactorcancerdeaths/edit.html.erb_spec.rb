require 'rails_helper'

RSpec.describe "riskfactorcancerdeaths/edit", type: :view do
  before(:each) do
    @riskfactorcancerdeath = assign(:riskfactorcancerdeath, Riskfactorcancerdeath.create!(
      :cause => "MyString",
      :year => "MyString",
      :share_deaths => "9.99"
    ))
  end

  it "renders the edit riskfactorcancerdeath form" do
    render

    assert_select "form[action=?][method=?]", riskfactorcancerdeath_path(@riskfactorcancerdeath), "post" do

      assert_select "input[name=?]", "riskfactorcancerdeath[cause]"

      assert_select "input[name=?]", "riskfactorcancerdeath[year]"

      assert_select "input[name=?]", "riskfactorcancerdeath[share_deaths]"
    end
  end
end
