class Alcoholconsumption < ApplicationRecord
    has_many :riskfactorcancerdeath
    has_and_belongs_to_many :sharepopulationsufferingtypescancer
    has_many :rehab 
    
end
       
   
