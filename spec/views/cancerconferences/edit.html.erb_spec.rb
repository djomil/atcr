require 'rails_helper'

RSpec.describe "cancerconferences/edit", type: :view do
  before(:each) do
    @cancerconference = assign(:cancerconference, Cancerconference.create!(
      :event => "MyString",
      :location => "MyString",
      :country => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit cancerconference form" do
    render

    assert_select "form[action=?][method=?]", cancerconference_path(@cancerconference), "post" do

      assert_select "input[name=?]", "cancerconference[event]"

      assert_select "input[name=?]", "cancerconference[location]"

      assert_select "input[name=?]", "cancerconference[country]"

      assert_select "input[name=?]", "cancerconference[latitude]"

      assert_select "input[name=?]", "cancerconference[longitude]"
    end
  end
end
