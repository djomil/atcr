class Riskfactorcancerdeath < ApplicationRecord
    belongs_to :alcohol
    has_and_belongs_to_many :sharepopulationsufferingtypesofcancer
end
