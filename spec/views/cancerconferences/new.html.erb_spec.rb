require 'rails_helper'

RSpec.describe "cancerconferences/new", type: :view do
  before(:each) do
    assign(:cancerconference, Cancerconference.new(
      :event => "MyString",
      :location => "MyString",
      :country => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new cancerconference form" do
    render

    assert_select "form[action=?][method=?]", cancerconferences_path, "post" do

      assert_select "input[name=?]", "cancerconference[event]"

      assert_select "input[name=?]", "cancerconference[location]"

      assert_select "input[name=?]", "cancerconference[country]"

      assert_select "input[name=?]", "cancerconference[latitude]"

      assert_select "input[name=?]", "cancerconference[longitude]"
    end
  end
end
