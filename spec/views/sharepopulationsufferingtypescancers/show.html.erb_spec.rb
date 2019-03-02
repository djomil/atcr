require 'rails_helper'

RSpec.describe "sharepopulationsufferingtypescancers/show", type: :view do
  before(:each) do
    @sharepopulationsufferingtypescancer = assign(:sharepopulationsufferingtypescancer, Sharepopulationsufferingtypescancer.create!(
      :entity => "Entity",
      :code => "Code",
      :year => "Year",
      :liver_cancer => "9.99",
      :larynx_cancer => "9.99",
      :kidney_cancer => "9.99",
      :breast_cancer => "9.99",
      :thyroid_cancer => "9.99",
      :stomach_cancer => "9.99",
      :uterine_cancer => "9.99",
      :ovarian_cancer => "9.99",
      :bladder_cancer => "9.99",
      :prostate_cancer => "9.99",
      :cervical_cancer => "9.99",
      :pancreatic_cancer => "9.99",
      :esophageal_cancer => "9.99",
      :testicular_cancer => "9.99",
      :nasopharynx_cancer => "9.99",
      :colon_and_rectum_cancer => "9.99",
      :non_melanoma_skin_cancer => "9.99",
      :lip_and_oral_cancer => "9.99",
      :brain_and_nervous_system_cancer => "9.99",
      :tracheal_bronchus_and_lung_cancer => "9.99",
      :gallbladder_and_biliary_tract_cancer => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Entity/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
