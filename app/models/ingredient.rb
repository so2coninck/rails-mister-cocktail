class Ingredient < ApplicationRecord
has_many : doses, dependant: :destroy
end
