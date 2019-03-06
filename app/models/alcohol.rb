class Alcohol < ApplicationRecord
    has_many :riskfactorcancerdeath 
    has_and_belongs_to_many :sharepopulationsufferingtypesofcancer
end
