require 'csv'
namespace :cancerconference do

desc "pull cancerconference information into database"
task seed_cancerconference: :environment do

#drop the old table data before importing the new stuff
Cancerconference.destroy_all

p "tables emptied"
CSV.foreach("lib/assets/atcr_data/cancerconferences.csv", :headers =>true) do |row |
puts row.inspect  #just so that we know the file's being read

#create new model instances with the data 
Cancerconference.create!(
event: row[0].to_s
location: row[1].to_s
country: row[2].to_s
latitude: row[3].to_f
longitude: row[4].to_date)
end
end
end