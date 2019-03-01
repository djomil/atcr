namespace :alcohol do
  desc "TODO"
  task load_list: :environment do
  	Alcohol.destroy_all
  	#initialize records from country list
  	CSV.foreach("lib/assets/atcr_data/total_alcohol_consumption_per_capita_litres_of_pure_alcohol.csv", :headers =>true) do |row |
  		puts row.inspect
  		Alcohol.create(name:row[0])
    	end
  end

end

