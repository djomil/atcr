namespace :alcohol do
desc "Populate the hdi table"
task populate_table: :environment do
#empty the table. MIGHT BE WRITTEN BADLY- PLEASE DOUBLE CHECK
Alcohols.destroy_all
#initialize records from total-alcohol-consumption-per-capita
id = 1
CSV.foreach("lib/assets/total-alcohol-consumption-per-capita-litres of pure alcohol.csv", :headers =>true) do |row |
puts row.inspect
for i in 0..27
Alcohols.create(code:id, entity:row[0], year_num:2015, alcohol_consumption:0+i)
end
id = id + 1
end

id = 0

year_array = [2015]
len = year_array.length
  	CSV.foreach("lib/assets/total-alcohol-consumption-per-capita-litres of pure alcohol.csv", :headers =>true) do |row|
    puts row.inspect 
    entity_name_now = row[1]  
    
    for i in 0..len-1
    record = AlcoholsIndex.find_by(entity_name: entity_name_now, code_string: code_array[i])
    if row[2+1] != nil 
    record.entity = row[2+i].to_f
    record.save
    end
    end
    end
    
 year_array [2015]
 len = year_array.length 
 CSV.foreach("lib/assets/total-alcohol-consumption-per-capita-litres of pure alcohol.csv", :headers =>true) do |row | 
 puts row.inspect
 country_name_now = row[1]
 
 for i in 0..len-1 
 record = AlcoholsIndex.find_by(entity_name: entity_name_now, code_string: code_array[i])
 if row[2+i] != nil
 record.alcohol 
  		
  		
  	
  	year_array = [1990,1995,2000,2005,2010,2011,2012,2013,2014,2015,2016,2017]
  	len = year_array.length
  	CSV.foreach("lib/assets/HDI.csv/Gross enrolment ratio, primary (% of primary school-age population).csv", :headers =>true) do |row |
  		puts row.inspect
  		country_name_now = row[1]
  		
  		for i in 0..len-1
  			record = HumanDevelopmentIndex.find_by(country_name: country_name_now, year_num: year_array[i])
  			if row[2+i] != nil
  				record.primary_gross_enrolment_ratio = row[2+i].to_f
  				record.save
  			end
  		end
  	
  	end
  	
  	year_array = [1990,1995,2000,2005,2010,2011,2012,2013,2014,2015,2016,2017]
  	len = year_array.length
  	CSV.foreach("lib/assets/HDI.csv/Gross enrolment ratio, secondary (% of secondary school-age population).csv", :headers =>true) do |row |
  		puts row.inspect
  		country_name_now = row[1]
  		
  		for i in 0..len-1
  			record = HumanDevelopmentIndex.find_by(country_name: country_name_now, year_num: year_array[i])
  			if row[2+i] != nil
  				record.secondary_gross_enrolment_ratio = row[2+i].to_f
  				record.save
  			end
  		end
  	
  	end
  	
  	year_array = [1990,1995,2000,2005,2010,2011,2012,2013,2014,2015,2016,2017]
  	len = year_array.length
  	CSV.foreach("lib/assets/HDI.csv/Gross enrolment ratio, tertiary (% of tertiary school-age population).csv", :headers =>true) do |row |
  		puts row.inspect
  		country_name_now = row[1]
  		
  		for i in 0..len-1
  			record = HumanDevelopmentIndex.find_by(country_name: country_name_now, year_num: year_array[i])
  			if row[2+i] != nil
  				record.tertiary_gross_enrolment_ratio = row[2+i].to_f
  				record.save
  			end
  		end
  	
  	end
  	
  	year_array = Array(1990..2017)
  	len = year_array.length
  	CSV.foreach("lib/assets/HDI.csv/Human Development Index (HDI).csv", :headers =>true) do |row |
  		puts row.inspect
  		country_name_now = row[1]
  		
  		for i in 0..len-1
  			record = HumanDevelopmentIndex.find_by(country_name: country_name_now, year_num: year_array[i])
  			if row[2+i] != nil
  				record.human_development_index = row[2+i].to_f
  				record.save
  			end
  		end
  	
  	end
  	
  	
  	year_array = Array(1990..2017)
  	len = year_array.length
  	CSV.foreach("lib/assets/HDI.csv/Life expectancy at birth (years).csv", :headers =>true) do |row |
  		puts row.inspect
  		country_name_now = row[1]
  		
  		for i in 0..len-1
  			record = HumanDevelopmentIndex.find_by(country_name: country_name_now, year_num: year_array[i])
  			if row[2+i] != nil
  				record.life_expectancy = row[2+i].to_f
  				record.save
  			end
  		end
  	
  	end
  	
  	year_array = [1990,1995,2000,2005,2010,2011,2012,2013,2014,2015,2016]
  	len = year_array.length
  	CSV.foreach("lib/assets/HDI.csv/Literacy rate, adult (% ages 15 and older).csv", :headers =>true) do |row |
  		puts row.inspect
  		country_name_now = row[1]
  		
  		for i in 0..len-1
  			record = HumanDevelopmentIndex.find_by(country_name: country_name_now, year_num: year_array[i])
  			if row[2+i] != nil
  				record.adult_literacy_rate = row[2+i].to_f
  				record.save
  			end
  		end
  	
  	end
  	
  	
  	
  end

end
