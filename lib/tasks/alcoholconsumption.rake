require 'csv'
namespace :alcoholconsumption do
  desc "pull alcoholconsumption information into database"
  task seed_alcoholconsumption: :environment do

    #drop the old table data before importing the new stuff
        Alcoholconsumption.destroy_all

    p "tables emptied"

      	CSV.foreach("lib/assets/atcr_data/total_alcohol_consumption_per_capita_litres_of_pure_alcohol.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Alcoholconsumption.create!(
      entity: row[0].to_s,
      code: row[1].to_s,
      year: row[2].to_s,
      consumption: row[3].to_d,
      latitude: row[4].to_f, 
      longitude: row[5].to_f
      )
    end
end 
end 