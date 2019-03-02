require 'csv'
namespace :riskfactorcancerdeath do
desc "pull riskfactorcancerdeath information into database"
task seed_riskfactorcancerdeath: :environment do 
#drop the old table data before importing the new stuff
Riskfactorcancerdeath.destroy_all

p "tables empited"
CSV.foreach("lib/assets/atcr_data/mod-share-of-cancer-deaths-attributed-to-risk-factors.csv", :headers =>true) do |row |
puts row.inspect  #just so that we know the file's being read

#create new model instances with the data 
Riskfactorcancerdeath.create!(
cause: row[0].to_s,
year: row[1].to_s,
share_deaths: row[2].to_d)
end
end
end

