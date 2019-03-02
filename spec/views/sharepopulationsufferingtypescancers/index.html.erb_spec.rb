require 'rails_helper'

RSpec.describe "sharepopulationsufferingtypescancers/index", type: :view do
  before(:each) do
    assign(:sharepopulationsufferingtypescancers, [
      Sharepopulationsufferingtypescancer.create!(
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
      ),
      Sharepopulationsufferingtypescancer.create!(
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
      )
    ])
  end

  it "renders a list of sharepopulationsufferingtypescancers" do
    render
    assert_select "tr>td", :text => "Entity".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
