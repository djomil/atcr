require 'csv'
namespace :sharepopulationsufferingcancer do
desc "pull sharepopulationsufferingcancer information into database"
task seed_sharepopulationsufferingcancer: :environment do
#drop the old table data before importing the new stuff
Sharepopulationsufferingcancer.destroy_all

p "tables emptied"
CSV.foreach("lib/assets/atcr_data/share_of_population_with_cancer.csv", :headers =>true) do |row |
#just so that we know the file is being read 
puts row.inspect 

#create new model instances with the data
Sharepopulationsufferingcancer.create!(
entity: row[0].to_s,
code: row[1].to_s,
year: row[2].to_s,
percentage_population_neoplasms: row[3].to_d
)
end
end
end
 
 
 
 
