require 'rails_helper'

RSpec.describe "sharepopulationsufferingtypescancers/new", type: :view do
  before(:each) do
    assign(:sharepopulationsufferingtypescancer, Sharepopulationsufferingtypescancer.new(
      :entity => "MyString",
      :code => "MyString",
      :year => "MyString",
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

  it "renders new sharepopulationsufferingtypescancer form" do
    render

    assert_select "form[action=?][method=?]", sharepopulationsufferingtypescancers_path, "post" do

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[entity]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[code]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[year]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[liver_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[larynx_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[kidney_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[breast_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[thyroid_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[stomach_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[uterine_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[ovarian_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[bladder_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[prostate_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[cervical_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[pancreatic_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[esophageal_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[testicular_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[nasopharynx_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[colon_and_rectum_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[non_melanoma_skin_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[lip_and_oral_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[brain_and_nervous_system_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[tracheal_bronchus_and_lung_cancer]"

      assert_select "input[name=?]", "sharepopulationsufferingtypescancer[gallbladder_and_biliary_tract_cancer]"
    end
  end
end
