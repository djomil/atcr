class Riskfactorcancerdeath < ApplicationRecord
    belongs_to :alcoholconsumption
    has_and_belongs_to_many :sharepopulationsufferingtypescancer
    has_and_belongs_to_many :cancerconference 
end
