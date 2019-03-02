class CreateSharepopulationsufferingtypescancers < ActiveRecord::Migration[5.2]
  def change
    create_table :sharepopulationsufferingtypescancers do |t|
      t.string :entity
      t.string :code
      t.string :year
      t.decimal :liver_cancer
      t.decimal :larynx_cancer
      t.decimal :kidney_cancer
      t.decimal :breast_cancer
      t.decimal :thyroid_cancer
      t.decimal :stomach_cancer
      t.decimal :uterine_cancer
      t.decimal :ovarian_cancer
      t.decimal :bladder_cancer
      t.decimal :prostate_cancer
      t.decimal :cervical_cancer
      t.decimal :pancreatic_cancer
      t.decimal :esophageal_cancer
      t.decimal :testicular_cancer
      t.decimal :nasopharynx_cancer
      t.decimal :colon_and_rectum_cancer
      t.decimal :non_melanoma_skin_cancer
      t.decimal :lip_and_oral_cancer
      t.decimal :brain_and_nervous_system_cancer
      t.decimal :tracheal_bronchus_and_lung_cancer
      t.decimal :gallbladder_and_biliary_tract_cancer

      t.timestamps
    end
  end
end
