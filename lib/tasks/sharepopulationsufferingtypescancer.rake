require 'csv'
namespace :sharepopulationsufferingtypescancer do
desc "pull sharepopulationsufferingtypescancer information into database"
task seed_sharepopulationsufferingtypescancer: :environment do 
#drop the old table data before importing the new stuff
Sharepopulationsufferingtypescancer.destroy_all
p "tables emptied"

CSV.foreach("lib/assets/atcr_data/share-of-population-suffering-from-cancer-types.csv", :headers =>true) do |row |
puts row.inspect  #just so that we know the file's being read

#create new model instances with the data

Sharepopulationsufferingtypescancer.create!(
entity: row[0].to_s,
code: row[1].to_s,
string: row[2].to_s,
liver_cancer: row[3].to_d,
larynx_cancer: row[4].to_d,
kidney_cancer: row[5].to_d,
breast_cancer: row[6].to_d,
thyroid_cancer: row[7].to_d,
stomach_cancer: row[8].to_d,
uterine_cancer: row[9].to_d,
ovarian_cancer: row[10].to_d,
bladder_cancer: row[11].to_d,
prostate_cancer: row[12].to_d,
cervical_cancer: row[13].to_d,
pancreatic_cancer: row[14].to_d,
esophageal_cancer: row[15].to_d,
testicular_cancer: row[16].to_d,
nasopharynx_cancer: row[17].to_d, 
colon_and_rectum_cancer: row[18].to_d, 
non_melanoma_skin_cancer: row[19].to_d,
lip_and_oral_cancer: row[20].to_d,
brain_and_nervous_system_cancer: row[21].to_d,
tracheal_bronchus_and_lung_cancer: row[22].to_d,
gallbladder_and_biliary_tract_cancer: row[23].to_d)

end
end
end




 


