class Sharepopulationsufferingtypescancer < ApplicationRecord
    has_and_belongs_to_many :alcohol
    has_and_belongs_to_many :riskfactorcancerdeath
end
