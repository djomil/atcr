require 'rails_helper'

RSpec.describe "riskfactorcancerdeaths/new", type: :view do
  before(:each) do
    assign(:riskfactorcancerdeath, Riskfactorcancerdeath.new(
      :cause => "MyString",
      :year => "MyString",
      :share_deaths => "9.99"
    ))
  end

  it "renders new riskfactorcancerdeath form" do
    render

    assert_select "form[action=?][method=?]", riskfactorcancerdeaths_path, "post" do

      assert_select "input[name=?]", "riskfactorcancerdeath[cause]"

      assert_select "input[name=?]", "riskfactorcancerdeath[year]"

      assert_select "input[name=?]", "riskfactorcancerdeath[share_deaths]"
    end
  end
end
