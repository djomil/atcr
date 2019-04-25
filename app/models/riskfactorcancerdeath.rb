class Riskfactorcancerdeath < ApplicationRecord
    has_and_belongs_to_many :alcoholconsumption
    has_and_belongs_to_many :sharepopulationsufferingtypescancer
    has_and_belongs_to_many :cancerconference 
end
