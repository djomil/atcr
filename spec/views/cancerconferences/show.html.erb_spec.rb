require 'rails_helper'

RSpec.describe "cancerconferences/show", type: :view do
  before(:each) do
    @cancerconference = assign(:cancerconference, Cancerconference.create!(
      :event => "Event",
      :location => "Location",
      :country => "Country",
      :latitude => 2.5,
      :longitude => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
