require 'csv'
namespace :smoking do
  desc "pull smoking information into database"
  task seed_smoking: :environment do

    #drop the old table data before importing the new stuff
        Alcohol.destroy_all

    p "tables emptied"

      	CSV.foreach("lib/assets/atcr_data/daily-smoking-prevalence-bounds.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Smoking.create!(
      entity: row[0].to_s,
      code: row[1].to_s,
      year: row[2].to_i,
      upper_bound: row[3].to_d,
      lower_bound: row[4].to_d,
      estimated_prevalence: row[5].to_d
      )
    end
end 
end 
