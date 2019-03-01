require 'csv'
namespace :alcohol do
  desc "pull alcohol information into database"
  task seed_alcohol: :environment do

    #drop the old table data before importing the new stuff
    Status.destroy_all
    Deployment.destroy_all

    p "tables emptied"

      	CSV.foreach("lib/assets/atcr_data/total_alcohol_consumption.csv", :headers =>true) do |row ||
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Deployment.create!(
      Entity: row[0].to_i,
      Code: row[1].to_i,
      Year: row[2].to_d,
      Consumption: row[3].to_d,
      )
    end

