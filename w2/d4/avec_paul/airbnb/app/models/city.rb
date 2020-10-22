class City < ApplicationRecord
    has_many :dog
    has_many :dogsitters
end
