class Dogsitter < ApplicationRecord
    has_many :strolls
    has_many :dog, through: :strolls
    belongs_to :cities, optional: true
end
